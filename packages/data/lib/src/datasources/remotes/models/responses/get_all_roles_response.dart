import 'package:data/lib.dart';

part 'generated/get_all_roles_response.freezed.dart';

part 'generated/get_all_roles_response.g.dart';

@freezed
abstract class RemoteGetAllRolesResponse with _$RemoteGetAllRolesResponse {
  const factory RemoteGetAllRolesResponse({
    List<RemoteRole>? roles,
  }) = _RemoteGetAllRolesResponse;

  factory RemoteGetAllRolesResponse.fromJson(Map<String, dynamic> json) =>
      _$RemoteGetAllRolesResponseFromJson(json);
}

@freezed
abstract class RemoteRole with _$RemoteRole {
  const factory RemoteRole({
    String? roleId,
    String? name,
  }) = _RemoteRole;

  factory RemoteRole.fromJson(Map<String, dynamic> json) =>
      _$RemoteRoleFromJson(json);
}
