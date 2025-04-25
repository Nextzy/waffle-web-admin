import 'package:change_application_name/application.dart';

part 'generated/console_entity.freezed.dart';

@freezed
abstract class ConsoleEntity with _$ConsoleEntity {
  const factory ConsoleEntity({
    ProfileEntity? profile,
  }) = _ConsoleEntity;
}
