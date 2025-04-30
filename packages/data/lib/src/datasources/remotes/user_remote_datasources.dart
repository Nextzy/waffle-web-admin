import 'package:data/lib.dart';

class UserRemoteDatasources {
  UserRemoteDatasources({
    UserRpcService? userService,
  }) : _userService = userService ?? UserRpcService(AppHttpClient.instance.dio);

  final UserRpcService _userService;

  Future<JsonRpcResponse<RemoteGetProfileResponse, ErrorResponse>> getProfile({
    required String email,
  }) async {
    return _userService.getProfile(
      email: email,
    );
  }

  Future<JsonRpcResponse<RemoteGetProfileResponse, ErrorResponse>>
      updateProfile({
    required String email,
    required String firstName,
    required String lastName,
    required String phone,
  }) async {
    return _userService.updateProfile(
      email: email,
      firstName: firstName,
      lastName: lastName,
      phone: phone,
    );
  }

  Future<JsonRpcResponse<RemoteGetProfileResponse, ErrorResponse>>
      resetPassword({
    required String email,
    required String oldPassword,
    required String newPassword,
  }) async {
    return _userService.resetPassword(
      email: email,
      oldPassword: oldPassword,
      newPassword: newPassword,
    );
  }
}
