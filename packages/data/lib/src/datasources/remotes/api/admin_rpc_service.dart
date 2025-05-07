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

  Future<JsonRpcResponse<RemoteGetRoleResponse, ErrorResponse>> getRole({
    required String roleId,
    String? requestId,
  }) async {
    final successMockQueryParams = {
      'apidogApiId': '16374242',
    };
    final failMockQueryParams = {
      'apidogApiId': '15405460',
      'apidogResponseId': '21196837',
    };

    return request(
      path,
      method: 'getByRole',
      id: requestId,
      params: RemoteGetRoleBody(
        roleId: roleId,
      ).toJson(),
      fromJson: RemoteGetRoleResponse.fromJson,
      extra: {'requiredAuth': true},
      queryParameters: successMockQueryParams,
    );
  }

  Future<JsonRpcResponse<dynamic, ErrorResponse>> createRole({
    String? requestId,
  }) async {
    final successMockQueryParams = {
      'apidogApiId': '16377546',
    };
    final failMockQueryParams = {
      'apidogApiId': '15405460',
      'apidogResponseId': '21196837',
    };

    return request(
      path,
      method: 'createByRole',
      id: requestId,
      fromJson: RemoteGetRoleResponse.fromJson, //todo temp
      extra: {'requiredAuth': true},
      queryParameters: successMockQueryParams,
    );
  }

  Future<JsonRpcResponse<dynamic, ErrorResponse>> updateRole({
    required String roleId,
    String? requestId,
  }) async {
    final successMockQueryParams = {
      'apidogApiId': '16374888',
    };
    final failMockQueryParams = {
      'apidogApiId': '15405460',
      'apidogResponseId': '21196837',
    };

    return request(
      path,
      method: 'updateByRole',
      id: requestId,
      fromJson: RemoteGetRoleResponse.fromJson, //todo temp
      extra: {'requiredAuth': true},
      queryParameters: successMockQueryParams,
    );
  }

  Future<JsonRpcResponse<dynamic, ErrorResponse>> deleteRole({
    required String roleId,
    String? requestId,
  }) async {
    final successMockQueryParams = {
      'apidogApiId': '16376915',
    };
    final failMockQueryParams = {
      'apidogApiId': '15405460',
      'apidogResponseId': '21196837',
    };

    return request(
      path,
      method: 'deleteByRole',
      id: requestId,
      fromJson: RemoteGetRoleResponse.fromJson, //todo temp
      extra: {'requiredAuth': true},
      queryParameters: successMockQueryParams,
    );
  }
}
