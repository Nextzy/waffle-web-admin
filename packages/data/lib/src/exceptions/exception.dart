import 'package:data/lib.dart';

class AppException implements Exception {
  const AppException({
    this.code,
    this.message,
    this.userMessage,
    this.developerMessage,
    this.stacktrace,
    this.errors,
  });

  final int? code;
  final String? message;
  final String? userMessage;
  final String? developerMessage;
  final List<AppException>? errors;
  final StackTrace? stacktrace;

  factory AppException.fromError(Error? error) {
    return AppException(
      developerMessage: error?.toString(),
      stacktrace: error?.stackTrace,
    );
  }

  factory AppException.fromDioException(DioException? exception) {
    final response = exception?.response;

    if (response != null) {
      final errorResponse = ErrorResponse.fromJson(exception?.response?.data);

      return AppException(
        code: errorResponse.code,
        message: errorResponse.message,
        userMessage: errorResponse.userMessage,
        developerMessage: errorResponse.developerMessage,
        stacktrace: exception?.stackTrace,
      );
    } else {
      return AppException(
        code: exception?.response?.statusCode,
        developerMessage: exception?.message,
        stacktrace: exception?.stackTrace,
      );
    }
  }

  factory AppException.fromNetworkException(NetworkException? exception) {
    return AppException(
      code: exception?.statusCode,
      message: exception?.errorMessage,
      developerMessage: exception?.developerMessage,
      stacktrace: exception?.stackTrace,
    );
  }

  factory AppException.fromException(Object? exception) {
    return AppException(
      developerMessage: exception.toString(),
    );
  }

  bool get isClientException => (code ?? 0) >= 400 && (code ?? 0) < 500;

  bool get isServerException => (code ?? 0) >= 500 && (code ?? 0) < 600;

  Failure toFailure({String? code}) => Failure(
    code: code ?? this.code.toString(),
    message: message,
    developerMessage: developerMessage,
    exception: this,
    stacktrace: stacktrace,
  );

  @override
  String toString() {
    String msg = '';
    if (code != null) msg += '>>Code: $code\n';
    if (message != null && message!.isNotEmpty) {
      msg += '>>Message: $message\n';
    }
    if (developerMessage != null && developerMessage!.isNotEmpty) {
      msg += '>>Description: $developerMessage\n';
    }
    errors?.forEach(
      (error) => msg += '   ${error.toString()}]\n',
    );
    return msg;
  }
}
