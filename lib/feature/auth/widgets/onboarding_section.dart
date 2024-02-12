import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/extensions.dart';
import '../../../gen/assets.gen.dart';
import 'onboarding_page_template.dart';

class OnboardingSection extends StatelessWidget {
  const OnboardingSection({required this.pageController, super.key});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: pageController,
      children: [
        OnboardingPageTemplate(
          image: Assets.images.money.path,
          title: context.s.auth_title1,
          description: context.s.auth_desc1,
        ),
        OnboardingPageTemplate(
          image: Assets.images.paperMoney.path,
          title: context.s.auth_title2,
          description: context.s.auth_desc2,
        ),
        OnboardingPageTemplate(
          image: Assets.images.plan.path,
          title: context.s.auth_title3,
          description: context.s.auth_desc3,
        ),
      ],
    );
  }
}
