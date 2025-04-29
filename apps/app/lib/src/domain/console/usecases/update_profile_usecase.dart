import 'package:change_application_name/application.dart';

class UpdateProfileUsecase extends BaseUsecase {
  UpdateProfileUsecase({
    AppRepository? repo,
  }) : _repo = repo ?? AppRepository();

  final AppRepository _repo;

  Future<JsonRpcResponse<RemoteGetProfileResponse, ErrorResponse>> call({
    required String email,
    required String firstName,
    required String lastName,
    required String phone,
  }) =>
      _repo.updateProfile(
        email: email,
        firstName: firstName,
        lastName: lastName,
        phone: phone,
      );
}
