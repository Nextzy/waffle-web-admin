import 'package:change_application_name/application.dart';

class CreateRoleUsecase extends BaseUsecase {
  CreateRoleUsecase({
    AppRepository? repo,
  }) : _repo = repo ?? AppRepository();

  final AppRepository _repo;

  Future<JsonRpcResponse<dynamic, ErrorResponse>> call() => _repo.createRole();
}
