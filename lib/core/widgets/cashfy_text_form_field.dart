import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../utils/extensions.dart';

class CashfyTextFormField extends HookWidget {
  const CashfyTextFormField({
    required this.controller,
    this.label,
    this.inputFormatters,
    this.isPasswordField = false,
    this.obscured = false,
    this.enabled = true,
    this.hint,
    this.validator,
    this.keyboardType,
    this.prefix,
    this.maxLines = 1,
    this.suffix,
    super.key,
  });

  factory CashfyTextFormField.repeatPassword(
    BuildContext context, {
    required TextEditingController controller,
    required TextEditingController passwordFieldController,
    required String label,
    String? Function(String?)? validator,
  }) {
    return CashfyTextFormField(
      isPasswordField: true,
      controller: controller,
      label: label,
      hint: context.s.repeat_password,
      obscured: true,
      validator: (value) {
        if (value != passwordFieldController.text) {
          return context.s.err_pass_match;
        }

        return validator?.call(value);
      },
    );
  }

  final TextEditingController controller;
  final List<TextInputFormatter>? inputFormatters;
  final String? label;
  final String? hint;
  final bool obscured;
  final Widget? prefix;
  final bool enabled;
  final int? maxLines;
  final Widget? suffix;
  final TextInputType? keyboardType;
  final bool isPasswordField;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    final isObscuredNotifier = useValueNotifier(obscured);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null)
          Text(
            label!,
            style: context.xText.body1.copyWith(
              color: context.colorScheme.outlineVariant,
            ),
            textAlign: TextAlign.start,
          ),
        ValueListenableBuilder(
          valueListenable: isObscuredNotifier,
          builder: (context, isObscured, _) {
            return TextFormField(
              textInputAction: TextInputAction.done,
              inputFormatters: inputFormatters,
              controller: controller,
              validator: validator,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: const InputDecoration()
                  .applyDefaults(
                    Theme.of(context).inputDecorationTheme,
                  )
                  .copyWith(
                    hintText: hint,
                    prefix: prefix,
                    suffix: suffix,
                    suffixIconColor: context.colorScheme.onBackground,
                    suffixStyle: context.xText.body2.copyWith(
                      color: context.colorScheme.onBackground,
                    ),
                    suffixIcon: isPasswordField
                        ? IconButton(
                            icon: Icon(
                              isObscured
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: context.colorScheme.outlineVariant,
                            ),
                            onPressed: () {
                              isObscuredNotifier.value = !isObscured;
                            },
                          )
                        : null,
                  ),
              style: context.xText.body2,
              obscureText: isObscured,
              enabled: enabled,
              maxLines: maxLines,
            );
          },
        ),
      ],
    );
  }
}
