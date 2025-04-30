import 'package:change_application_name/application.dart';

class GetAllRolesUsecase extends BaseUsecase {
  GetAllRolesUsecase({
    AppRepository? repo,
  }) : _repo = repo ?? AppRepository();

  final AppRepository _repo;

  Future<JsonRpcResponse<RemoteGetAllRolesResponse, ErrorResponse>> call() =>
      _repo.getAllRoles();
}
