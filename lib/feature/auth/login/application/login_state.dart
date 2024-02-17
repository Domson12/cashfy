import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/failure/models/failure.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;

  const factory LoginState.loading() = _Loading;

  const factory LoginState.success() = _Success;

  const factory LoginState.error(Failure error) = _Error;
}
