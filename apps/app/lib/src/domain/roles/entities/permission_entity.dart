import 'package:change_application_name/application.dart';

part 'generated/permission_entity.freezed.dart';

@freezed
abstract class PermissionEntity with _$PermissionEntity {
  const factory PermissionEntity({
    @Default('') String page,
    @Default(false) bool isVisible,
    @Default(false) bool canCreate,
    @Default(false) bool canUpdate,
    @Default(false) bool canDelete,
  }) = _PermissionEntity;

  factory PermissionEntity.fromResponse(
      String page, RemotePermissionResponse? response) {
    return PermissionEntity(
      page: page,
      isVisible: response?.visible ?? false,
      canCreate: response?.create ?? false,
      canUpdate: response?.update ?? false,
      canDelete: response?.delete ?? false,
    );
  }
}
