import 'package:data/lib.dart';

class AppNetworkErrorHandlerInterceptor extends NetworkErrorHandlerInterceptor {
  AppNetworkErrorHandlerInterceptor();

  @override
  void onClientError(DioException err, ErrorInterceptorHandler handler) {
    if (err.error case NetworkException exception) {
      //TODO:
      // handler.reject(err);
      handler.resolve(err.response!);
    } else {
      handler.next(err);
    }
  }

  @override
  void onServerError(DioException err, ErrorInterceptorHandler handler) {
    if (err.error case NetworkException exception) {
      //TODO:
      handler.reject(err);
    } else {
      handler.next(err);
    }
  }
}
