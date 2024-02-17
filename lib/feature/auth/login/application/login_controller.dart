import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../domain/auth/auth_repository.dart';
import 'login_state.dart';

part 'login_controller.g.dart';

@riverpod
class LoginController extends _$LoginController {
  @override
  LoginState build() {
    return const LoginState.initial();
  }

  Future<void> login(String email, String password) async {
    state = const LoginState.loading();
    final result = await ref.watch(authRepositoryProvider).login(
          email,
          password,
        );

    result.fold(
      (l) => state = LoginState.error(l),
      (_) => state = const LoginState.success(),
    );
  }
}
