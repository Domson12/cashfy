import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/utils/extensions.dart';
import '../../../core/widgets/cashfy_app_bar.dart';
import '../../../core/widgets/cashfy_flushbar.dart';
import '../../../core/widgets/cashfy_keyboard_dismisser.dart';
import 'application/register_controller.dart';
import 'application/register_state.dart';
import 'widgets/register_form.dart';

@RoutePage()
class RegisterPage extends ConsumerWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final registerState = ref.watch(registerControllerProvider);

    ref.listen(
      registerControllerProvider,
      (previous, next) {
        next.maybeWhen(
          orElse: () {},
          error: (e) {
            CashfyFlushbar.error(
              context,
              content: e.mapErrorMessage(context),
            ).showWithContext();
          },
        );
      },
    );
    return Stack(
      children: [
        CashfyKeyboardDismisser(
          child: Scaffold(
            appBar: CashfyAppBar(title: context.s.sign_up),
            body: const SafeArea(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: RegisterForm(),
              ),
            ),
          ),
        ),
        if (registerState == const RegisterState.loading())
          const Center(
            child: CircularProgressIndicator(),
          ),
      ],
    );
  }
}
