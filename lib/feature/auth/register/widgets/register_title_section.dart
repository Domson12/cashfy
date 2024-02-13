import 'package:flutter/cupertino.dart';

import '../../../../core/utils/extensions.dart';

class RegisterTitleSection extends StatelessWidget {
  const RegisterTitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: context.s.welcome_to,
        style: context.xText.title1.copyWith(
          color: context.colorScheme.onBackground,
        ),
        children: [
          TextSpan(
            text: context.s.app_name_title,
            style: context.xText.title1.copyWith(
              color: context.colorScheme.primary,
            ),
          ),
        ],
      ),
    );
  }
}
