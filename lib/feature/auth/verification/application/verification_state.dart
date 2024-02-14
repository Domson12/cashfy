import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/failure/models/failure.dart';

part 'verification_state.freezed.dart';

@freezed
class VerificationState with _$VerificationState {
  const factory VerificationState.initial() = _Initial;
  const factory VerificationState.loading() = _Loading;
  const factory VerificationState.success() = _Success;
  const factory VerificationState.error(Failure error) = _Error;
}
