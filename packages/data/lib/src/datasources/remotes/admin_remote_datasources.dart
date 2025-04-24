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
    print('get profile');
    print('${email}');

    return _adminService.getProfile(
      email: email,
    );
  }
}
