import 'package:core/lib.dart';

class CommonFailure<T> extends Failure<T> {
  const CommonFailure({
    super.code,
    super.message,
    super.developerMessage,
    super.exception,
    super.stacktrace,
    super.data,
    super.failureList,
  });
}
