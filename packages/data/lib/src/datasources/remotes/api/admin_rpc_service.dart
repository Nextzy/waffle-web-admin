import 'package:data/lib.dart';

class AdminRpcService extends RpcService {
  const AdminRpcService(
    super.dio, {
    this.path = '/users',
    // super.baseUrl = 'https://waffle.nextzy.com/v1',
    super.baseUrl = 'https://mock.apidog.com/m1/890771-872568-default/v1',
  });

  final String path;

  Future<JsonRpcResponse<RemoteGetProfileResponse, ErrorResponse>> getProfile({
    required String email,
    String? requestId,
  }) async {
    final successMockQueryParams = {
      'apidogApiId': '16183500',
    };
    final failMockQueryParams = {
      'apidogApiId': '15405460',
      'apidogResponseId': '21196837',
    };

    return request(
      path,
      method: 'getProfile',
      id: requestId,
      params: RemoteGetProfileBody(
        email: email,
      ).toJson(),
      fromJson: RemoteGetProfileResponse.fromJson,
      extra: {'requiredAuth': true},
      queryParameters: successMockQueryParams,
    );
  }

  Future<JsonRpcResponse<RemoteGetProfileResponse, ErrorResponse>>
      updateProfile({
    required String email,
    required String firstName,
    required String lastName,
    required String phone,
    String? requestId,
  }) async {
    final successMockQueryParams = {
      'apidogApiId': '16183504',
    };
    final failMockQueryParams = {
      'apidogApiId': '15405460',
      'apidogResponseId': '21196837',
    };

    return request(
      path,
      method: 'updateProfile',
      id: requestId,
      params: RemoteUpdateProfileBody(
        email: email,
        firstName: firstName,
        lastName: lastName,
        phone: phone,
      ).toJson(),
      fromJson: RemoteGetProfileResponse.fromJson,
      extra: {'requiredAuth': true},
      queryParameters: successMockQueryParams,
    );
  }

  Future<JsonRpcResponse<RemoteGetProfileResponse, ErrorResponse>>
      resetPassword({
    required String email,
    required String oldPassword,
    required String newPassword,
    String? requestId,
  }) async {
    final successMockQueryParams = {
      'apidogApiId': '16185207',
    };
    final failMockQueryParams = {
      'apidogApiId': '15405460',
      'apidogResponseId': '21196837',
    };

    return request(
      path,
      method: 'resetPassword',
      id: requestId,
      params: RemoteResetPasswordBody(
        email: email,
        oldPassword: oldPassword,
        newPassword: newPassword,
      ).toJson(),
      fromJson: RemoteGetProfileResponse.fromJson,
      extra: {'requiredAuth': true},
      queryParameters: successMockQueryParams,
    );
  }
}
