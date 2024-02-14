import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../domain/user/models/user_model.dart';

const _email = 'email';
const _isVerified = 'is_verified';
const _users = 'users';

final supabaseDatasourceProvider = Provider<SupabaseDatasource>(
  (ref) {
    return SupabaseDatasource();
  },
);

class SupabaseDatasource {
  final _supabase = Supabase.instance;

  //get user data
  Future<UserModel> getCurrentUserData(String email) async {
    final response = await _supabase.client.from(_users).select().eq(
          _email,
          email,
        );
    return UserModel.fromJson(response.first);
  }

  //set user is_verified to true
  Future<void> updateUserVerifyStatus(String email) async {
    await _supabase.client.from(_users).update({_isVerified: true}).eq(
      _email,
      email,
    );
  }
}
