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

Failure catchAuhExceptionCode(AuthException e) {
  switch (e.statusCode) {
    case '400':
      return const Failure.error('Bad request');
    case '401':
      return const Failure.error('Unauthorized');
    case '403':
      return const Failure.error('Forbidden');
    case '404':
      return const Failure.error('Not found');
    case '406':
      return const Failure.error('Not acceptable');
    case '408':
      return const Failure.error('Request timeout');
    case '409':
      return const Failure.error('Conflict');
    case '410':
      return const Failure.error('Gone');
    case '412':
      return const Failure.error('Precondition failed');
    case '413':
      return const Failure.error('Payload too large');
    case '415':
      return const Failure.error('Unsupported media type');
    case '416':
      return const Failure.error('Range not satisfiable');
    case '417':
      return const Failure.error('Expectation failed');
    case '422':
      return const Failure.error('Unprocessable entity');
    case '429':
      return const Failure.error('Internal server error');
    case '500':
      return const Failure.error('Bad gateway');
    case '502':
      return const Failure.error('Service unavailable');
    case '503':
      return const Failure.error('Gateway timeout');
    default:
      return const Failure.unknown();
  }
}
