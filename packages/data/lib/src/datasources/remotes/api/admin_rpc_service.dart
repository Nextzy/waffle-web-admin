import 'package:data/lib.dart';

class AdminRpcService extends RpcService {
  const AdminRpcService(
    super.dio, {
    this.path = '/admin',
    // super.baseUrl = 'https://waffle.nextzy.com/v1',
    super.baseUrl = 'https://mock.apidog.com/m1/890771-872568-default/v1',
  });

  final String path;

  Future<JsonRpcResponse<RemoteGetAllRolesResponse, ErrorResponse>>
      getAllRoles({
    String? requestId,
  }) async {
    final successMockQueryParams = {
      'apidogApiId': '16373268',
    };
    final failMockQueryParams = {
      'apidogApiId': '15405460',
      'apidogResponseId': '21196837',
    };

    return request(
      path,
      method: 'getAllRoles',
      id: requestId,
      fromJson: RemoteGetAllRolesResponse.fromJson,
      extra: {'requiredAuth': true},
      queryParameters: successMockQueryParams,
    );
  }
}
