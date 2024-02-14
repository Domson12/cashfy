import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../core/navigation/app_router.dart';
import '../../../../core/utils/extensions.dart';
import '../../../../core/widgets/cashfy_flushbar.dart';
import '../../../../core/widgets/cashfy_text_auth_button.dart';
import '../../register/application/register_controller.dart';
import '../application/verification_controller.dart';

class VerificationContent extends HookConsumerWidget {
  const VerificationContent({
    required this.formKey,
    this.email,
    super.key,
  });

  final GlobalKey<FormState> formKey;
  final String? email;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final code = useState('');

    ref.listen(verificationControllerProvider, (previous, next) {
      next.maybeWhen(
        error: (f) => CashfyFlushbar.error(
          context,
          content: f.mapErrorMessage(context),
        ).showWithContext(),
        success: () {
          context.router.push(const DashboardRoute());
        },
        orElse: () => null,
      );
    });
    return Column(
      children: [
        Text(
          context.s.enter_verification_code,
          style: context.xText.title1,
        ),
        const SizedBox(height: 16),
        Text(
          context.s.verification_info,
          style: context.xText.body1,
        ),
        const SizedBox(height: 48),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: PinCodeTextField(
            beforeTextPaste: (text) {
              return true;
            },
            validator: (v) => v!.length < 6 ? context.s.err_invalid_code : null,
            appContext: context,
            length: 6,
            animationType: AnimationType.fade,
            pinTheme: PinTheme(
              shape: PinCodeFieldShape.circle,
              borderRadius: BorderRadius.circular(5),
              fieldHeight: 44,
              fieldWidth: 34,
              activeColor: context.colorScheme.outline,
              selectedColor: context.colorScheme.outline,
              inactiveColor: context.colorScheme.outline,
              disabledColor: context.colorScheme.outline,
              activeFillColor: Colors.transparent,
              selectedFillColor: context.colorScheme.outline,
              inactiveFillColor: context.colorScheme.outline,
              inactiveBorderWidth: 0.5,
            ),
            pastedTextStyle: context.xText.title1,
            animationDuration: const Duration(milliseconds: 300),
            enableActiveFill: true,
            onChanged: (v) {
              code.value = v;
            },
          ),
        ),
        const SizedBox(height: 48),
        Text.rich(
          TextSpan(
            text: context.s.email_send,
            style: context.xText.body1,
            children: [
              TextSpan(
                text: email ?? '',
                style: context.xText.body1.copyWith(
                  color: context.colorScheme.primary,
                ),
              ),
              const TextSpan(
                text: ' ',
              ),
              TextSpan(
                text: context.s.check_inbox,
                style: context.xText.body1,
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        CashfyTextAuthButton(
          padding: const EdgeInsets.symmetric(vertical: 14),
          clickableText: context.s.verification_send_again,
          onTap: () {
            if (email != null) {
              ref.watch(registerControllerProvider.notifier).resendCode(
                    email!,
                  );
            } else {
              CashfyFlushbar.warning(
                context,
                content: context.s.err_something_went_wrong,
              ).showWithContext();
            }
          },
        ),
        const SizedBox(height: 24),
        SizedBox(
          width: double.maxFinite,
          child: ElevatedButton(
            onPressed: () {
              if (formKey.currentState?.validate() != true) return;
              ref.watch(verificationControllerProvider.notifier).verifyCode(
                    code.value,
                    email ?? '',
                  );
            },
            child: Text(
              context.s.verify,
              style: context.xText.title3,
            ),
          ),
        ),
      ],
    );
  }
}
