import 'package:change_application_name/application.dart';

part 'generated/roles_entity.freezed.dart';

@freezed
abstract class RolesEntity with _$RolesEntity {
  const factory RolesEntity({
    List<RoleEntity>? roles,
  }) = _RolesEntity;
}
