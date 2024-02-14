import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../core/utils/extensions.dart';
import '../../../../core/widgets/cashfy_flushbar.dart';
import '../../../../core/widgets/cashfy_text_auth_button.dart';
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
    return Column(
      children: [
        Text(
          context.s.enter_verification_code,
          style: context.xText.title1,
        ),
        const SizedBox(height: 16),
        Text(
          "If email is taken, you won't be able to use it again.",
          style: context.xText.body1,
        ),
        const SizedBox(height: 48),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: PinCodeTextField(
            validator: (v) => v!.length < 6 ? 'Invalid code' : null,
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
              ref.watch(verificationControllerProvider.notifier).resendCode(
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
