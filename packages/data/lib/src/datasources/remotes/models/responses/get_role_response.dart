import 'package:data/lib.dart';

part 'generated/get_role_response.freezed.dart';

part 'generated/get_role_response.g.dart';

@freezed
abstract class RemoteGetRoleResponse with _$RemoteGetRoleResponse {
  const factory RemoteGetRoleResponse({
    RemoteRole? role,
  }) = _RemoteGetRoleResponse;

  factory RemoteGetRoleResponse.fromJson(Map<String, dynamic> json) =>
      _$RemoteGetRoleResponseFromJson(json);
}
