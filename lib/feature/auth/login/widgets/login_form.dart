import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../core/utils/extensions.dart';
import '../../../../core/widgets/cashfy_text_auth_button.dart';
import '../../../../core/widgets/cashfy_text_form_field.dart';
import '../application/login_controller.dart';

class LoginForm extends HookConsumerWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    return Column(
      children: [
        const SizedBox(height: 24),
        Text(
          context.s.welcome_back,
          style: context.xText.title1.copyWith(
            color: context.colorScheme.primary,
          ),
        ),
        const SizedBox(height: 24),
        CashfyTextFormField(
          controller: emailController,
          hint: context.s.email,
        ),
        const SizedBox(height: 24),
        CashfyTextFormField(
          controller: passwordController,
          hint: context.s.password,
          isPasswordField: true,
          obscured: true,
        ),
        const SizedBox(height: 32),
        SizedBox(
          width: double.maxFinite,
          child: ElevatedButton(
            onPressed: () {
              ref.read(loginControllerProvider.notifier).login(
                    emailController.text,
                    passwordController.text,
                  );
            },
            child: Text(
              context.s.login,
              style: context.xText.title3,
            ),
          ),
        ),
        const SizedBox(height: 24),
        CashfyTextAuthButton(
          clickableText: context.s.forgot_password,
          onTap: () {},
        ),
        const SizedBox(height: 16),
        CashfyTextAuthButton(
          text: context.s.dont_have_acount,
          clickableText: context.s.sign_up,
          onTap: () {},
        ),
      ],
    );
  }
}
