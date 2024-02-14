import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final supabaseAuthDatasourceProvider = Provider<SupabaseAuthDatasource>(
  (ref) {
    return SupabaseAuthDatasource();
  },
);

class SupabaseAuthDatasource {
  final _supabase = Supabase.instance;

  //register
  Future<void> register(
    String email,
    String password,
    String username,
  ) async {
    await _supabase.client.auth.signUp(
      email: email,
      password: password,
      data: {
        'display_name': username,
        'email': email,
        'is_verified': false,
      },
    );
  }

  //login
  Future<void> login(String email, String password) async {
    await _supabase.client.auth.signInWithPassword(
      email: email,
      password: password,
    );
  }

  //check if user is verified
  Future<bool> isUserVerified() async {
    final user = _supabase.client.auth.currentSession?.user;
    return user?.emailConfirmedAt != null;
  }

  //verify
  Future<void> verify(String token) async {
    await _supabase.client.auth.verifyOTP(token: token, type: OtpType.email);
  }

  //resend email verification
  Future<void> resendEmailVerification(String email) async {
    await _supabase.client.auth.resend(email: email, type: OtpType.signup);
  }
}
