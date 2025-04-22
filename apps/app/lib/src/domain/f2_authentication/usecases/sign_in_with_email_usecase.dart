import 'package:change_application_name/application.dart';

class SignInWithEmailAndPasswordUsecase extends BaseUsecase {
  SignInWithEmailAndPasswordUsecase({
    AppRepository? repo,
  }) : _repo = repo ?? AppRepository();

  final AppRepository _repo;

  Stream<Either<Failure, bool>> call({
    required String email,
    required String password,
  }) =>
      _repo
          .signInWithEmailPassword(email: email, password: password)
          .mapEitherFailure(
        (exception) {
          return getFailure(exception);
        },
      );
}
