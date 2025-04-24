import 'package:data/lib.dart';

class AuthenticationRpcService extends RpcService {
  const AuthenticationRpcService(
    super.dio, {
    this.path = '/auth',
    super.baseUrl = 'https://waffle.nextzy.com/v1',
  });

  final String path;

  Future<JsonRpcResponse<RemoteAuthenticationResponse, ErrorResponse>>
      signInWithEmailPassword({
    required String email,
    required String password,
    String? requestId,
  }) =>
          request(
            path,
            method: 'requestAuthenEmail',
            id: requestId,
            params: RemoteSignInWithEmailBody(
              email: email,
              password: password,
            ).toJson(),
            fromJson: RemoteAuthenticationResponse.fromJson,
          );

  Future<JsonRpcResponse<RemoteAuthenticationResponse, ErrorResponse>>
      signInWithUsernamePassword({
    required String username,
    required String password,
    String? requestId,
  }) =>
          request(
            path,
            method: 'requestAuthenBasic',
            id: requestId,
            params: RemoteSignInWithUsernameBody(
              username: username,
              password: password,
            ).toJson(),
            fromJson: RemoteAuthenticationResponse.fromJson,
          );

  Future<JsonRpcResponse<RemoteAuthenticationResponse, ErrorResponse>>
      refreshAccessToken({
    String? requestId,
  }) =>
          request(
            path,
            method: 'refreshAccessToken',
            id: requestId,
            fromJson: RemoteAuthenticationResponse.fromJson,
            extra: {'requiredAuth': true},
          );

  // Future<JsonRpcResponse<RemoteGetProfileResponse, ErrorResponse>> getProfile({
  //   required String email,
  //   String? requestId,
  // }) =>
  //     request(
  //       path,
  //       method: 'getProfile',
  //       id: requestId,
  //       params: RemoteGetProfileBody(
  //         email: email,
  //       ).toJson(),
  //       fromJson: RemoteGetProfileResponse.fromJson,
  //       extra: {'requiredAuth': true},
  //     );

  Future<JsonRpcResponse<RemoteGetProfileResponse, ErrorResponse>>
      getSocialProfile({
    required String accessToken,
    required String social,
    String? requestId,
  }) =>
          request(
            path,
            method: 'requestAuthenSocial',
            id: requestId,
            params: RemoteGetSocialProfileBody(
              accessToken: accessToken,
              social: social,
            ).toJson(),
            fromJson: RemoteGetProfileResponse.fromJson,
            extra: {'requiredAuth': true},
          );

  Future<JsonRpcResponse<RemoteRequestOtpResponse, ErrorResponse>> requestOtp({
    required String phoneNumber,
    String? requestId,
  }) async {
    final successMockQueryParams = {
      'apidogApiId': '15405460',
    };
    final failMockQueryParams = {
      'apidogApiId': '15405460',
      'apidogResponseId': '21196837',
    };

    return request(
      path,
      method: 'requestOtp',
      id: requestId,
      params: RemoteRequestOtpBody(
        phoneNumber: phoneNumber,
      ).toJson(),
      fromJson: RemoteRequestOtpResponse.fromJson,
      queryParameters: failMockQueryParams,
    );
  }

  Future<JsonRpcResponse<RemoteVerifyOtpResponse, ErrorResponse>> verifyOtp({
    required String token,
    required String pin,
    String? requestId,
  }) async {
    final successMockQueryParams = {
      'apidogApiId': '15413309',
    };
    final failMockQueryParams = {
      'apidogApiId': '15413309',
      'apidogResponseId': '21044853',
    };

    return request(
      path,
      method: 'verifyOtp',
      id: requestId,
      params: RemoteVerifyOtpBody(
        token: token,
        pin: pin,
      ).toJson(),
      fromJson: RemoteVerifyOtpResponse.fromJson,
      queryParameters: successMockQueryParams,
    );
  }

  Future<JsonRpcResponse<RemoteSubtractResponse, ErrorResponse>> subtract({
    required int subtrahend,
    required int minuend,
    String? requestId,
  }) async =>
      request(
        path,
        method: 'subtract',
        id: requestId,
        params: RemoteSubtractBody(
          subtrahend: subtrahend,
          minuend: minuend,
        ).toJson(),
        fromJson: RemoteSubtractResponse.fromJson,
      );

  Future<JsonRpcResponse<RemoteEchoResponse, ErrorResponse>> echo({
    required String name,
    String? requestId,
  }) async =>
      request(
        path,
        method: 'echo',
        id: requestId,
        params: RemoteEchoBody(
          name: name,
        ).toJson(),
        fromJson: RemoteEchoResponse.fromJson,
      );
}
