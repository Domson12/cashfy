import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../core/navigation/app_router.dart';
import '../../../../core/utils/extensions.dart';
import '../../../../core/utils/validators.dart';
import '../../../../core/widgets/cashfy_external_auth_section.dart';
import '../../../../core/widgets/cashfy_text_auth_button.dart';
import '../../../../core/widgets/cashfy_text_form_field.dart';
import '../application/register_controller.dart';
import 'register_checkbox_field.dart';
import 'register_title_section.dart';

class RegisterForm extends HookConsumerWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final usernameController = useTextEditingController();
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final confirmPasswordController = useTextEditingController();
    final formKey = GlobalKey<FormState>();

    return Form(
      key: formKey,
      child: Column(
        children: [
          const RegisterTitleSection(),
          const SizedBox(height: 24),
          CashfyTextFormField(
            controller: usernameController,
            hint: context.s.username,
            validator: (value) => Validators.notEmpty(context, value),
          ),
          const SizedBox(height: 24),
          CashfyTextFormField(
            hint: context.s.email,
            controller: emailController,
            validator: (value) => Validators.email(context, value),
          ),
          const SizedBox(height: 24),
          CashfyTextFormField(
            obscured: true,
            hint: context.s.password,
            controller: passwordController,
            isPasswordField: true,
            validator: (value) => Validators.password(context, value),
          ),
          const SizedBox(height: 24),
          CashfyTextFormField(
            obscured: true,
            hint: context.s.confirm_password,
            controller: confirmPasswordController,
            isPasswordField: true,
            validator: (value) => Validators.repeatPassword(
              context,
              value,
              passwordController.text,
            ),
          ),
          const SizedBox(height: 16),
          const RegisterCheckboxField(),
          const SizedBox(height: 16),
          SizedBox(
            width: double.maxFinite,
            child: ElevatedButton(
              onPressed: () =>
                  ref.read(registerControllerProvider.notifier).register(
                        usernameController.text,
                        emailController.text,
                        passwordController.text,
                      ),
              child: Text(
                context.s.sign_up,
                style: context.xText.title3,
              ),
            ),
          ),
          const CashfyExternalAuthSection(),
          const SizedBox(height: 16),
          CashfyTextAuthButton.login(
            onTap: () => context.router.push(
              const LoginRoute(),
            ),
            context: context,
          ),
        ],
      ),
    );
  }
}
