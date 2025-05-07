import 'package:data/lib.dart';

class AppRepository {
  AppRepository({
    AuthenticationRemoteDatasources? authRemoteDatasource,
    AdminRemoteDatasources? adminRemoteDatasource,
    UserRemoteDatasources? userRemoteDatasource,
    DatabaseLocalDataSources? localDatasource,
  })  : _authRemoteDatasource =
            authRemoteDatasource ?? AuthenticationRemoteDatasources(),
        _adminRemoteDatasource =
            adminRemoteDatasource ?? AdminRemoteDatasources(),
        _userRemoteDatasource = userRemoteDatasource ?? UserRemoteDatasources(),
        _localDatasource = localDatasource ?? DatabaseLocalDataSources();

  final AuthenticationRemoteDatasources _authRemoteDatasource;
  final AdminRemoteDatasources _adminRemoteDatasource;
  final UserRemoteDatasources _userRemoteDatasource;
  final DatabaseLocalDataSources _localDatasource;

  Future<JsonRpcResponse<RemoteAuthenticationResponse, ErrorResponse>>
      signInWithEmailPassword({
    required String email,
    required String password,
  }) {
    return _authRemoteDatasource.signInWithEmailPassword(
      email: email,
      password: password,
    );
  }

  Future<JsonRpcResponse<RemoteGetProfileResponse, ErrorResponse>> getProfile({
    required String email,
  }) {
    return _userRemoteDatasource.getProfile(
      email: email,
    );
  }

  Future<JsonRpcResponse<RemoteGetProfileResponse, ErrorResponse>>
      updateProfile({
    required String email,
    required String firstName,
    required String lastName,
    required String phone,
  }) {
    return _userRemoteDatasource.updateProfile(
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
  }) {
    return _userRemoteDatasource.resetPassword(
      email: email,
      oldPassword: oldPassword,
      newPassword: newPassword,
    );
  }

  Future<JsonRpcResponse<RemoteGetAllRolesResponse, ErrorResponse>>
      getAllRoles() {
    return _adminRemoteDatasource.getAllRoles();
  }

  Future<JsonRpcResponse<RemoteGetRoleResponse, ErrorResponse>> getRole({
    required String roleId,
  }) {
    return _adminRemoteDatasource.getRole(roleId: roleId);
  }

  Future<JsonRpcResponse<dynamic, ErrorResponse>> createRole() {
    return _adminRemoteDatasource.createRole();
  }

  Future<JsonRpcResponse<dynamic, ErrorResponse>> updateRole({
    required String roleId,
  }) {
    return _adminRemoteDatasource.updateRole(roleId: roleId);
  }

  Future<JsonRpcResponse<dynamic, ErrorResponse>> deleteRole({
    required String roleId,
  }) {
    return _adminRemoteDatasource.deleteRole(roleId: roleId);
  }
}
