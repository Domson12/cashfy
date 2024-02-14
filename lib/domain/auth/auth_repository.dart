import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../data/supabase_auth_datasource.dart';
import '../failure/catch_exception.dart';
import '../failure/models/failure.dart';

final authRepositoryProvider = Provider<AuthRepository>(
  AuthRepository.new,
);

class AuthRepository {
  AuthRepository(this._ref);

  final ProviderRef<AuthRepository> _ref;

  FailableFuture<void> register(
    String email,
    String password,
    String username,
  ) {
    return catchException(
      () => _ref.read(supabaseAuthDatasourceProvider).register(
            email,
            password,
            username,
          ),
    );
  }

  FailableFuture<void> login(String email, String password) {
    return catchException(
      () => _ref.read(supabaseAuthDatasourceProvider).login(
            email,
            password,
          ),
    );
  }

  FailableFuture<void> verify(String token, String email) {
    return catchException(
      () => _ref.read(supabaseAuthDatasourceProvider).verify(token, email),
    );
  }

  FailableFuture<void> resendEmailVerification(String email) {
    return catchException(
      () => _ref
          .read(supabaseAuthDatasourceProvider)
          .resendEmailVerification(email),
    );
  }

  //is user verified
  Future<bool> isUserVerified() async {
    return _ref.read(supabaseAuthDatasourceProvider).isUserVerified();
  }
}
