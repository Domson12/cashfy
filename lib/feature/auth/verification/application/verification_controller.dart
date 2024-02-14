import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../domain/auth/auth_repository.dart';
import 'verification_state.dart';

part 'verification_controller.g.dart';

@riverpod
class VerificationController extends _$VerificationController {
  @override
  VerificationState build() {
    return const VerificationState.initial();
  }

  //verify
  Future<void> verifyCode(String code) async {
    state = const VerificationState.loading();
    final result = await ref.watch(authRepositoryProvider).verify(code);
    //result isOption<Failure>
    result.fold(
      (f) => state = VerificationState.error(f),
      (_) => state = const VerificationState.success(),
    );
  }

  //resend
  Future<void> resendCode(String email) async {
    state = const VerificationState.loading();
    final result =
        await ref.watch(authRepositoryProvider).resendEmailVerification(email);
    //result isOption<Failure>
    result.fold(
      (f) => state = VerificationState.error(f),
      (_) => state = const VerificationState.success(),
    );
  }

  //is user verified
  Future<bool> isUserVerified() {
    return ref.watch(authRepositoryProvider).isUserVerified();
  }
}
