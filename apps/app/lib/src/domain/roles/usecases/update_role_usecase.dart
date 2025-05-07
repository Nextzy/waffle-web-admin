import 'package:change_application_name/application.dart';

class UpdateRoleUsecase extends BaseUsecase {
  UpdateRoleUsecase({
    AppRepository? repo,
  }) : _repo = repo ?? AppRepository();

  final AppRepository _repo;

  Future<JsonRpcResponse<dynamic, ErrorResponse>> call({
    required String roleId,
  }) =>
      _repo.updateRole(roleId: roleId);
}
