import 'package:change_application_name/application.dart';

class HomeUsecase {
  HomeUsecase({
    AppRepository? repo,
  }) : _repo = repo ?? AppRepository();

  final AppRepository _repo;

  Stream<Either<Failure, String>> call() {
    return Stream.empty();
  }
}
