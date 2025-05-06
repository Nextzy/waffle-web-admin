import 'package:change_application_name/application.dart';

class GetRoleUsecase extends BaseUsecase {
  GetRoleUsecase({
    AppRepository? repo,
  }) : _repo = repo ?? AppRepository();

  final AppRepository _repo;

  Future<JsonRpcResponse<RemoteGetRoleResponse, ErrorResponse>> call({
    required String roleId,
  }) =>
      _repo.getRole(roleId: roleId);
}
