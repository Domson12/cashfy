import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../domain/auth/auth_repository.dart';
import 'register_state.dart';

part 'register_controller.g.dart';

@riverpod
class RegisterController extends _$RegisterController {
  @override
  RegisterState build() {
    return const RegisterState.initial();
  }

  Future<void> register(
    String username,
    String email,
    String password,
  ) async {
    state = const RegisterState.loading();
    final result = await ref.read(authRepositoryProvider).register(
          email,
          password,
          username,
        );
    result.fold(
      (l) => state = RegisterState.error(l),
      (r) => state = const RegisterState.success(),
    );
  }

  void resetState() {
    state = const RegisterState.initial();
  }
}
