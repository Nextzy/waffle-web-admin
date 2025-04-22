import 'package:data/lib.dart';

class MockId extends TypedExtras {
  const MockId({
    required this.mockId,
  });

  final int mockId;
}

class MockHeaderInterceptor extends Interceptor {
  MockHeaderInterceptor();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final int mockId = options.extra.getOrElse(
      'mockId',
      () => -1,
    );
    if (kDebugMode && mockId != -1) {
      options.headers['Mock-Id'] = mockId;
    }
    super.onRequest(options, handler);
  }
}
