import 'package:change_application_name/application.dart';

part 'generated/role_entity.freezed.dart';

@freezed
abstract class RoleEntity with _$RoleEntity {
  const factory RoleEntity({
    String? roleId,
    String? name,
    List<PagePermissionEntity>? pagePermissions,
  }) = _RoleEntity;

  factory RoleEntity.fromResponse(RemoteRole response) => RoleEntity(
        roleId: response.roleId ?? '',
        name: response.name ?? '',
        pagePermissions: [
          PagePermissionEntity(page: 'Campaigns'),
          PagePermissionEntity(page: 'Games', canCreate: true),
          PagePermissionEntity(
              page: 'Customers', canUpdate: true, canDelete: true),
        ],
      );
}
