import 'package:flutter/material.dart';

import '../utils/extensions.dart';
import 'cashfy_social_auth_button.dart';

class CashfyExternalAuthSection extends StatelessWidget {
  const CashfyExternalAuthSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16),
        Text(
          context.s.or_with,
          style: context.xText.body1.copyWith(
            color: context.colorScheme.outlineVariant,
          ),
        ),
        const SizedBox(height: 16),
        const CashfySocialAuthButton(),
      ],
    );
  }
}
