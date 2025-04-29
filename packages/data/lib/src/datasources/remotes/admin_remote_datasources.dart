import 'package:data/lib.dart';

class AdminRemoteDatasources {
  AdminRemoteDatasources({
    AdminRpcService? adminService,
  }) : _adminService =
            adminService ?? AdminRpcService(AppHttpClient.instance.dio);

  final AdminRpcService _adminService;

  Future<JsonRpcResponse<RemoteGetProfileResponse, ErrorResponse>> getProfile({
    required String email,
  }) async {
    return _adminService.getProfile(
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
    return _adminService.updateProfile(
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
    return _adminService.resetPassword(
      email: email,
      oldPassword: oldPassword,
      newPassword: newPassword,
    );
  }
}
