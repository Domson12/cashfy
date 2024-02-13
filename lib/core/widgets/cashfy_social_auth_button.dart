import 'package:flutter/material.dart';

import '../../gen/assets.gen.dart';
import '../utils/extensions.dart';

class CashfySocialAuthButton extends StatelessWidget {
  const CashfySocialAuthButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(16),
      child: Ink(
        decoration: BoxDecoration(
          color: context.colorScheme.background,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: context.colorScheme.outline,
          ),
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Assets.svg.googleIcon.svg(
                width: 24,
                height: 24,
              ),
              const SizedBox(width: 16),
              Text(
                context.s.sign_in_google,
                style: context.xText.title3.copyWith(
                  color: context.colorScheme.onBackground,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
