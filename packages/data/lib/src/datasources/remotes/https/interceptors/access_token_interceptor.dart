import 'package:data/lib.dart';

class RequiredAuth extends TypedExtras {
  const RequiredAuth({
    this.requiredAuth = true,
  });

  final bool requiredAuth;
}

class AppAccessTokenInterceptor extends QueuedInterceptor {
  AppAccessTokenInterceptor(
    this._dio, {
    this.accessToken,
    this.refreshToken,
    this.retryLimit = 3,
    required this.refreshTokenPath,
  }) : _retryCounter = 0;

  final Dio _dio;
  final int retryLimit;
  final String refreshTokenPath;
  String? accessToken;
  String? refreshToken;
  int _retryCounter;

  bool get hasAccessToken =>
      accessToken != null && accessToken?.isNotEmpty == true;

  bool get hasRefreshToken =>
      refreshToken != null && refreshToken?.isNotEmpty == true;

  bool isCatchError(Response<dynamic>? response) {
    return response?.statusCode == 401;
  }

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final bool isUseToken = options.extra.getOrElse(
      'requiredAuth',
      () => false,
    );
    if (hasAccessToken && isUseToken) {
      options.headers[HttpHeader.AUTHORIZE] = 'Bearer $accessToken';
    } else {
      options.headers.remove(HttpHeader.AUTHORIZE);
    }
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (isCatchError(response)) {
      onTokenResponse(response, handler);
    } else {
      _resetCounter();
      super.onResponse(response, handler);
    }
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (isCatchError(err.response)) {
      onTokenError(err, handler);
    } else {
      _resetCounter();
      super.onError(err, handler);
    }
  }

  void onTokenResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) async {
    if (_retryCounter <= retryLimit) {
      try {
        final Map<String, dynamic>? data = (await _fetchRefreshToken()).data;
        accessToken = data?['token'];
        refreshToken = data?['refreshToken'];
        final newResponse = await _reFetchOldService(response.requestOptions);
        handler.resolve(newResponse);
      } catch (error) {
        _retryCounter += 1;
        onTokenResponse(response, handler);
      }
    } else {
      _resetCounter();
      handler.reject(
        DioException(
          requestOptions: response.requestOptions,
          response: response,
          error: const UnauthorizedException(),
          stackTrace: Trace.current(),
          type: DioExceptionType.unknown,
          message: response.statusMessage,
        ),
      );
    }
  }

  Future<void> onTokenError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    if (_retryCounter <= retryLimit) {
      try {
        final Map<String, dynamic>? data = (await _fetchRefreshToken()).data;
        accessToken = data?['token'];
        refreshToken = data?['refreshToken'];
        final newResponse =
            await _reFetchOldService(err.response?.requestOptions);
        handler.resolve(newResponse);
      } catch (error) {
        _retryCounter += 1;
        onTokenError(err, handler);
      }
    } else {
      _resetCounter();
      handler.reject(err);
    }
  }

  void _resetCounter() => _retryCounter = 0;

  Future<Response> _reFetchOldService(RequestOptions? requestOptions) =>
      _dio.fetch<Map<String, dynamic>>(
        Options(
          method: 'POST',
        ).compose(
          _dio.options,
          refreshTokenPath,
        ),
      );

  Future<Response<Map<String, dynamic>>> _fetchRefreshToken() =>
      _dio.fetch<Map<String, dynamic>>(
        Options(
          method: 'POST',
        ).compose(
          _dio.options,
          refreshTokenPath,
        ),
      );
}
