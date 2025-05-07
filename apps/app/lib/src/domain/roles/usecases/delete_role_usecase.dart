import 'package:change_application_name/application.dart';

class DeleteRoleUsecase extends BaseUsecase {
  DeleteRoleUsecase({
    AppRepository? repo,
  }) : _repo = repo ?? AppRepository();

  final AppRepository _repo;

  Future<JsonRpcResponse<dynamic, ErrorResponse>> call({
    required String roleId,
  }) =>
      _repo.deleteRole(roleId: roleId);
}
