import 'package:flutter/widgets.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/utils/extensions.dart';

part 'failure.freezed.dart';

typedef FailableFuture<T> = Future<Either<Failure, T>>;
typedef FailableFutureOption = Future<Option<Failure>>;

@freezed
class Failure with _$Failure {
  const Failure._();

  //* Supabase
  const factory Failure.code400() = _400;
  const factory Failure.code401() = _401;
  const factory Failure.code403() = _403;
  const factory Failure.code404() = _404;
  const factory Failure.code406() = _406;
  const factory Failure.code408() = _408;
  const factory Failure.code409() = _409;
  const factory Failure.code410() = _410;
  const factory Failure.code412() = _412;
  const factory Failure.code413() = _413;
  const factory Failure.code415() = _415;
  const factory Failure.code416() = _416;
  const factory Failure.code417() = _417;
  const factory Failure.code422() = _422;
  const factory Failure.code429() = _429;
  const factory Failure.code500() = _500;
  const factory Failure.code502() = _502;
  const factory Failure.code503() = _503;
  const factory Failure.code544() = _544;
  const factory Failure.unknown() = _Unknown;

  String mapErrorMessage(BuildContext context) {
    final s = context.s;
    return when(
      code400: () => 'Error 400',
      code401: () => 'Error 401',
      code403: () => 'Error 403',
      code404: () => 'Error 404',
      code406: () => 'Error 406',
      code408: () => 'Error 408',
      code409: () => 'Error 409',
      code410: () => 'Error 410',
      code412: () => 'Error 412',
      code413: () => 'Error 413',
      code415: () => 'Error 415',
      code416: () => 'Error 416',
      code417: () => 'Error 417',
      code422: () => 'Error 422',
      code429: () => 'Error 429',
      code500: () => 'Error 500',
      code502: () => 'Error 502',
      code503: () => 'Error 503',
      code544: () => 'Error 544',
      unknown: () => 'Error unknown',
    );
  }
}
