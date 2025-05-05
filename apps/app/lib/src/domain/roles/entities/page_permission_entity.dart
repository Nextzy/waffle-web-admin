import 'package:change_application_name/application.dart';

part 'generated/page_permission_entity.freezed.dart';

@freezed
abstract class PagePermissionEntity with _$PagePermissionEntity {
  const factory PagePermissionEntity({
    @Default('') String page,
    @Default(false) bool isVisible,
    @Default(false) canCreate,
    @Default(false) canUpdate,
    @Default(false) canDelete,
  }) = _PagePermissionEntity;

  // factory PagePermissionEntity.fromResponse(RemoteRole response) => PagePermissionEntity(
  //   roleId: response.roleId ?? '',
  //   name: response.name ?? '',
  // );
}
