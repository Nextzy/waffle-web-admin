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

  Future<JsonRpcResponse<dynamic, ErrorResponse>> createRole() async {
    return _adminService.createRole();
  }

  Future<JsonRpcResponse<dynamic, ErrorResponse>> updateRole({
    required String roleId,
  }) async {
    return _adminService.updateRole(roleId: roleId);
  }

  Future<JsonRpcResponse<dynamic, ErrorResponse>> deleteRole({
    required String roleId,
  }) async {
    return _adminService.deleteRole(roleId: roleId);
  }
}
