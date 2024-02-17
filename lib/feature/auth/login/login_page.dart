import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/widgets/loading_widget.dart';
import 'application/login_controller.dart';
import 'application/login_state.dart';
import 'widgets/login_form.dart';

@RoutePage()
class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(loginControllerProvider);
    return Stack(
      children: [
        Scaffold(
          appBar: AppBar(),
          body: const SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: LoginForm(),
          ),
        ),
        if (state == const LoginState.loading()) const LoadingWidget(),
      ],
    );
  }
}
