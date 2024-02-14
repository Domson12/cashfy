import 'package:flutter/material.dart';

import '../utils/extensions.dart';

class CashfyTextAuthButton extends StatelessWidget {
  const CashfyTextAuthButton({
    this.padding = const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
    this.text,
    this.clickableText,
    this.onTap,
    super.key,
  });

  factory CashfyTextAuthButton.login({
    required VoidCallback onTap,
    required BuildContext context,
  }) {
    return CashfyTextAuthButton(
      text: context.s.already_have_an_account,
      clickableText: context.s.login,
      onTap: onTap,
    );
  }

  factory CashfyTextAuthButton.signUp({
    required VoidCallback onTap,
    required BuildContext context,
  }) {
    return CashfyTextAuthButton(
      text: context.s.dont_have_acount,
      clickableText: context.s.sign_up,
      onTap: onTap,
    );
  }

  final String? text;
  final String? clickableText;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: padding,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (text != null)
              Text(
                text ?? '',
                style: context.xText.body1.copyWith(
                  color: context.colorScheme.outline,
                ),
              ),
            const SizedBox(width: 4),
            Text(
              clickableText ?? '',
              style: context.xText.body1.copyWith(
                color: context.colorScheme.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
