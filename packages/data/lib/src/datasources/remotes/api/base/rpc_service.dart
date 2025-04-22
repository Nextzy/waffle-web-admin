import 'package:data/lib.dart';

abstract class RpcService {
  const RpcService(
    this._dio, {
    this.baseUrl,
    this.jsonrpc = 'Nextzy',
    this.errorLogger,
  });

  final Dio _dio;
  final String? baseUrl;
  final String jsonrpc;
  final ParseErrorLogger? errorLogger;

  Future<JsonRpcResponse<DATA, ErrorResponse>> request<DATA>(
    String path, {
    String? jsonrpc,
    required String method,
    Map<String, dynamic>? params,
    String? id,
    String? mockId,
    DATA Function(Map<String, dynamic> json)? fromJson,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
  }) async {
    queryParameters?.removeWhere((k, v) => v == null);
    final Map<String, Object?> body = {
      'jsonrpc': jsonrpc ?? this.jsonrpc,
      'mock': mockId,
      'method': method,
      'params': params,
      'id': id ?? _randomRequestId(),
    };
    body.removeWhere((k, v) => v == null);
    final options = _setStreamType<JsonRpcResponse<DATA, ErrorResponse>>(
      Options(method: 'POST', headers: headers, extra: extra)
          .compose(
            _dio.options,
            path,
            queryParameters: queryParameters,
            data: body,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final fetchResult = await _dio.fetch<Map<String, dynamic>>(options);
    late JsonRpcResponse<DATA, ErrorResponse> value;
    final Map<String, dynamic>? data = fetchResult.data;
    final result = data?['result'];
    final error = data?['error'];
    try {
      value = JsonRpcResponse(
        jsonrpc: data?['jsonrpc'] as String?,
        id: data?['id'] as String?,
        result: result is Map<String, dynamic>
            ? fromJson!(result)
            : result != null
                ? fromJson!({
                    'result': result,
                  })
                : null,
        error: error != null
            ? ErrorResponse.fromJson(error as Map<String, dynamic>)
            : null,
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, options);
      rethrow;
    }
    return value;
  }

  void notifySync(
    String path, {
    String? jsonrpc,
    required String method,
    String? mockId,
    Map<String, dynamic>? params,
  }) =>
      notify(
        path,
        jsonrpc: jsonrpc,
        method: method,
        mockId: mockId,
        params: params,
      );

  Future<void> notify(
    String path, {
    String? jsonrpc,
    required String method,
    String? mockId,
    Map<String, dynamic>? params,
  }) async {
    final extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final headers = <String, dynamic>{};
    final Map<String, Object?> data = {
      'jsonrpc': jsonrpc ?? this.jsonrpc,
      'mock': mockId,
      'method': method,
      'params': params,
    };
    data.removeWhere((k, v) => v == null);
    final options = _setStreamType(
      Options(method: 'POST', headers: headers, extra: extra)
          .compose(
            _dio.options,
            path,
            queryParameters: queryParameters,
            data: data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    await _dio.fetch<Map<String, dynamic>>(options);
  }

  //TODO: Need research
  Future<List<JsonRpcResponse>> batch(
    String path, {
    required List<BatchJsonRpcBody> bodyList,
  }) async {
    final extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final headers = <String, dynamic>{};
    final data = bodyList.map((e) => e.toJson()).toList();
    final options =
        _setStreamType<List<JsonRpcResponse<dynamic, ErrorResponse>>>(
      Options(method: 'POST', headers: headers, extra: extra)
          .compose(
            _dio.options,
            path,
            queryParameters: queryParameters,
            data: data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final result = await _dio.fetch<List<dynamic>>(options);
    late List<JsonRpcResponse<dynamic, ErrorResponse>> value;
    try {
      result.data!.removeWhere((m) => m['id'] == null);
      value = result.data!.map(
        (dynamic i) {
          final iMap = i as Map<String, dynamic>;
          final id = iMap['id'];
          final result = iMap['result'];
          final error = iMap['error'];
          final Function(Map<String, dynamic>? json)? fromJson =
              bodyList.firstWhereOrNull((b) => b.id == id)?.fromJsonResponse;

          return JsonRpcResponse(
            jsonrpc: iMap['jsonrpc'] as String?,
            id: id as String?,
            result: result != null
                ? fromJson!(result as Map<String, dynamic>)
                : null,
            error: error != null
                ? ErrorResponse.fromJson(error as Map<String, dynamic>)
                : null,
          );
        },
      ).toList();
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, options);
      rethrow;
    }
    return value;
  }

  String _randomRequestId() {
    final random = Random();
    final randomNumber = random.nextInt(999999) + 1;
    return randomNumber.toString();
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(String dioBaseUrl, String? baseUrl) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
