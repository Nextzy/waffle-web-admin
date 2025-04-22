import 'package:core/lib.dart';

class BaseUsecase {
  Failure getFailure(AppException exception) {
    if (exception.isClientException) {
      ClientFailure(message: Strings.common.fail.general);
    } else if (exception.isServerException) {
      ServerFailure(message: Strings.common.fail.general);
    }
    return CommonFailure(message: Strings.common.fail.general);
  }
}
