import 'package:fpdart/fpdart.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../core/utils/logger.dart';
import 'models/failure.dart';

FailableFuture<T> catchException<T>(
  Future<T> Function() callback,
) async {
  try {
    return Right(await callback());
  } catch (e) {
    logger.e('Exception during repository ($callback) call: $e');
    if (e is AuthException) return Left(catchAuhExceptionCode(e));
    return const Left(Failure.unknown());
  }
}

FailableFutureOption catchExceptionOption(
  Future<void> Function() callback,
) async {
  try {
    await callback();
    return none();
  } catch (e) {
    logger.e('Exception during repository ($callback) call: $e');
    return some(const Failure.unknown());
  }
}

Failure catchAuhExceptionCode(
  AuthException e,
) {
  switch (e.statusCode) {
    case '400':
      return const Failure.code400();
    case '401':
      return const Failure.code401();
    case '403':
      return const Failure.code403();
    case '404':
      return const Failure.code404();
    case '406':
      return const Failure.code406();
    case '408':
      return const Failure.code408();
    case '409':
      return const Failure.code409();
    case '410':
      return const Failure.code410();
    case '412':
      return const Failure.code412();
    case '413':
      return const Failure.code413();
    case '415':
      return const Failure.code415();
    case '416':
      return const Failure.code416();
    case '417':
      return const Failure.code417();
    case '422':
      return const Failure.code422();
    case '429':
      return const Failure.code429();
    case '500':
      return const Failure.code500();
    case '502':
      return const Failure.code502();
    case '503':
      return const Failure.code503();
    case '544':
      return const Failure.code544();
    default:
      return const Failure.unknown();
  }
}
