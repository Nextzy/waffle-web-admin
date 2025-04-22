import 'package:data/lib.dart';

extension AppExceptionFutureExtensions<T> on Future<T> {
  Future<Either<AppException, T>> mapAppException() =>
      then<Either<AppException, T>>(
        (T value) => Right(value),
      ).onError(
        (exception, stackTrace) {
          if (exception is AppException) {
            return Left(exception);
          } else if (exception is Error) {
            Log.e(exception, stackTrace: exception.stackTrace);
            return Left(AppException.fromError(exception));
          } else if (exception is DioException) {
            final tmpError = exception.error;
            if (tmpError case NetworkException networkException) {
              Log.e(networkException, stackTrace: networkException.stackTrace);
            } else if (tmpError != null) {
              Log.e(tmpError, stackTrace: exception.stackTrace);
            } else {
              Log.e(exception, stackTrace: exception.stackTrace);
            }
            return Left(AppException.fromDioException(exception));
          } else {
            Log.e(exception, stackTrace: stackTrace);
            return Left(AppException(developerMessage: exception.toString()));
          }
        },
      );
}

extension AppExceptionStreamExtensions<E extends Exception, DATA>
    on Stream<Either<E, DATA>> {
  Stream<Either<AppException, DATA>> mapAppException() => map(
        (event) => event.resolve(
          (data) => Right(data),
          (exception) {
            if (exception is AppException) {
              return Left(exception);
            } else if (exception is DioException) {
              final tmpError = exception.error;
              if (tmpError case NetworkException networkException) {
                Log.e(networkException,
                    stackTrace: networkException.stackTrace);
              } else if (tmpError != null) {
                Log.e(tmpError, stackTrace: exception.stackTrace);
              } else {
                Log.e(exception, stackTrace: exception.stackTrace);
              }
              return Left(AppException.fromDioException(exception));
            } else {
              Log.e(exception);
              return Left(AppException(developerMessage: exception.toString()));
            }
          },
        ),
      );
}
