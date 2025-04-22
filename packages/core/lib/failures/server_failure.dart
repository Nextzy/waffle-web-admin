import 'package:core/lib.dart';

class ServerFailure<T> extends Failure<T> {
  const ServerFailure({
    super.code,
    super.message,
    super.developerMessage,
    super.exception,
    super.stacktrace,
    super.data,
    super.failureList,
  });
}
