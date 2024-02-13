import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../core/utils/extensions.dart';

class RegisterCheckboxField extends HookWidget {
  const RegisterCheckboxField({super.key});

  @override
  Widget build(BuildContext context) {
    final check = useState(false);
    return Row(
      children: [
        Transform.translate(
          offset: const Offset(-10, 0),
          child: Transform.scale(
            scale: 1.4,
            child: Checkbox(
              value: check.value,
              onChanged: (value) {
                check.value = value!;
              },
            ),
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              text: 'By signing up, you agree to the ',
              style: context.xText.body1.copyWith(
                color: context.colorScheme.outlineVariant,
              ),
              children: [
                TextSpan(
                  text: 'Terms of Service and Privacy Policy',
                  style: context.xText.body1.copyWith(
                    color: context.colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
