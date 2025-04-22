import 'package:core/lib.dart';

class ClientFailure<T> extends Failure<T> {
  const ClientFailure({
    super.code,
    super.message,
    super.developerMessage,
    super.exception,
    super.stacktrace,
    super.data,
    super.failureList,
  });
}
