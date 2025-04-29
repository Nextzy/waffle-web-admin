import 'package:change_application_name/application.dart';

class ResetPasswordUsecase extends BaseUsecase {
  ResetPasswordUsecase({
    AppRepository? repo,
  }) : _repo = repo ?? AppRepository();

  final AppRepository _repo;

  Future<JsonRpcResponse<RemoteGetProfileResponse, ErrorResponse>> call({
    required String email,
    required String oldPassword,
    required String newPassword,
  }) =>
      _repo.resetPassword(
        email: email,
        oldPassword: oldPassword,
        newPassword: newPassword,
      );
}
