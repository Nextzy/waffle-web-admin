import 'package:data/lib.dart';

class AdminRemoteDatasources {
  AdminRemoteDatasources({
    AdminRpcService? adminService,
  }) : _adminService =
            adminService ?? AdminRpcService(AppHttpClient.instance.dio);

  final AdminRpcService _adminService;

  Future<JsonRpcResponse<RemoteGetAllRolesResponse, ErrorResponse>>
      getAllRoles() async {
    return _adminService.getAllRoles();
  }

  Future<JsonRpcResponse<RemoteGetRoleResponse, ErrorResponse>> getRole({
    required String roleId,
  }) async {
    return _adminService.getRole(roleId: roleId);
  }
}
