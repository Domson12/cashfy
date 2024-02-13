import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/utils/extensions.dart';
import '../../../core/widgets/cashfy_app_bar.dart';
import '../../../core/widgets/cashfy_flushbar.dart';
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
        Scaffold(
          appBar: CashfyAppBar(
            title: Text(
              context.s.sign_up,
              style: context.xText.title3.copyWith(
                color: context.colorScheme.onBackground,
              ),
            ),
          ),
          body: const SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: RegisterForm(),
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
