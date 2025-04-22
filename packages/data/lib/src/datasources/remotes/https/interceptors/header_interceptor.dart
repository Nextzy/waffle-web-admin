import 'package:data/lib.dart';

class AppHeaderInterceptor extends Interceptor {
  AppHeaderInterceptor({
    String? language,
    String? apiKey,
  })  : _language = language,
        _apiKey = apiKey;

  String? _language;
  String? _apiKey;

  set language(String? language) => _language = language;

  set apiKey(String? key) => _apiKey = key;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers.addAll({
      HttpHeader.ACCEPT_LANGUAGE: _language ?? 'EN',
      HttpHeader.X_API_KEY: _apiKey,
    });
    super.onRequest(options, handler);
  }
}
