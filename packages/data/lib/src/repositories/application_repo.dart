import 'package:data/lib.dart';

class AppRepository {
  AppRepository({
    AuthenticationRemoteDatasources? authRemoteDatasource,
    AdminRemoteDatasources? adminRemoteDatasource,
    DatabaseLocalDataSources? localDatasource,
  })  : _authRemoteDatasource =
            authRemoteDatasource ?? AuthenticationRemoteDatasources(),
        _adminRemoteDatasource =
            adminRemoteDatasource ?? AdminRemoteDatasources(),
        _localDatasource = localDatasource ?? DatabaseLocalDataSources();

  final AuthenticationRemoteDatasources _authRemoteDatasource;
  final AdminRemoteDatasources _adminRemoteDatasource;
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
    return _adminRemoteDatasource.getProfile(
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
    return _adminRemoteDatasource.updateProfile(
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
    return _adminRemoteDatasource.resetPassword(
      email: email,
      oldPassword: oldPassword,
      newPassword: newPassword,
    );
  }
}
