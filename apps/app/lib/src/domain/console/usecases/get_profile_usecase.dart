import 'package:change_application_name/application.dart';

class GetProfileUsecase extends BaseUsecase {
  GetProfileUsecase({
    AppRepository? repo,
  }) : _repo = repo ?? AppRepository();

  final AppRepository _repo;

  Future<JsonRpcResponse<RemoteGetProfileResponse, ErrorResponse>> call({
    required String email,
  }) =>
      _repo.getProfile(
        email: email,
      );
}
