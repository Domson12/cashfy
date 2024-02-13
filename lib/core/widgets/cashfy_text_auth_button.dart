import 'package:flutter/material.dart';

import '../utils/extensions.dart';

class CashfyTextAuthButton extends StatelessWidget {
  const CashfyTextAuthButton({
    required this.text,
    required this.clickableText,
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

  final String text;
  final String clickableText;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            Text(
              text,
              style: context.xText.body1.copyWith(
                color: context.colorScheme.outline,
              ),
            ),
            const SizedBox(width: 4),
            Text(
              clickableText,
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
