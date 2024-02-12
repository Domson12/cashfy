import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../core/navigation/app_router.dart';
import '../../core/utils/extensions.dart';
import 'widgets/onboarding_section.dart';

@RoutePage()
class AuthPage extends HookWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    final pageController = usePageController();
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: OnboardingSection(pageController: pageController),
            ),
            const SizedBox(height: 34),
            SmoothPageIndicator(
              controller: pageController,
              count: 3,
              effect: WormEffect(
                dotColor: context.colorScheme.outline,
                activeDotColor: context.colorScheme.primary,
              ),
            ),
            const SizedBox(height: 34),
            SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () => context.router.push(
                  const RegisterRoute(),
                ),
                child: Text(context.s.sign_up, style: context.xText.title3),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: context.colorScheme.inversePrimary,
                  foregroundColor: context.colorScheme.primary,
                ),
                onPressed: () => context.router.push(
                  const LoginRoute(),
                ),
                child: Text(context.s.login, style: context.xText.title3),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
