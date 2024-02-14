import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/utils/extensions.dart';
import '../../../core/widgets/cashfy_app_bar.dart';
import '../../../core/widgets/cashfy_keyboard_dismisser.dart';
import 'widgets/verification_content.dart';

@RoutePage()
class VerificationPage extends HookConsumerWidget {
  const VerificationPage({this.email, super.key});

  final String? email;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = useMemoized(GlobalKey<FormState>.new);
    return CashfyKeyboardDismisser(
      child: Scaffold(
        appBar: CashfyAppBar(title: context.s.verification),
        body: SafeArea(
          child: KeyboardVisibilityBuilder(
            builder: (context, isKeyboardVisible) {
              return Form(
                key: formKey,
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Padding(
                    padding: EdgeInsets.only(
                      bottom: isKeyboardVisible
                          ? MediaQuery.of(context).viewInsets.bottom
                          : 0,
                    ),
                    child: VerificationContent(
                      formKey: formKey,
                      email: email,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
