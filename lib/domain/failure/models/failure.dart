import 'package:flutter/widgets.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

typedef FailableFuture<T> = Future<Either<Failure, T>>;
typedef FailableFutureOption = Future<Option<Failure>>;

@freezed
class Failure with _$Failure {
  const Failure._();

  //* Supabase
  const factory Failure.error(
    String message,
  ) = _Error;

  const factory Failure.unknown() = _Unknown;

  String mapErrorMessage(BuildContext context) {
    return when(
      error: (message) {
        return message;
      },
      unknown: () => 'Error unknown',
    );
  }
}
