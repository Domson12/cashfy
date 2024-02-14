import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/supabase_datasource.dart';
import '../failure/catch_exception.dart';
import '../failure/models/failure.dart';
import 'models/user_model.dart';

final userRepositoryProvider = Provider<UserRepository>(
  UserRepository.new,
);

class UserRepository {
  UserRepository(this._ref);

  final ProviderRef<UserRepository> _ref;

  //get user data
  FailableFuture<UserModel> getCurrentUserData(String email) {
    return catchException(
      () => _ref.read(supabaseDatasourceProvider).getCurrentUserData(
            email,
          ),
    );
  }
}
