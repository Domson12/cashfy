import 'package:flutter/cupertino.dart';

import '../../../core/utils/extensions.dart';

class OnboardingPageTemplate extends StatelessWidget {
  const OnboardingPageTemplate({
    required this.image,
    required this.title,
    required this.description,
    super.key,
  });

  final String image;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image),
        Text(
          title,
          textAlign: TextAlign.center,
          style: context.xText.title1.copyWith(
            color: context.colorScheme.onBackground,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          description,
          textAlign: TextAlign.center,
          style: context.xText.body1.copyWith(
            color: context.colorScheme.outlineVariant,
          ),
        ),
      ],
    );
  }
}
