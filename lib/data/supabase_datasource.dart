import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final supabaseDatasourceProvider = Provider<SupabaseDatasource>(
  (ref) {
    return SupabaseDatasource();
  },
);

class SupabaseDatasource {
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
      },
    );
  }

  //send sms verification code
  Future<void> sendSmsVerificationCode(String token) async {
    await _supabase.client.auth.verifyOTP(token: token, type: OtpType.email);
  }

  //login
  Future<void> login(String email, String password) async {
    await _supabase.client.auth.signInWithPassword(
      email: email,
      password: password,
    );
  }
}
