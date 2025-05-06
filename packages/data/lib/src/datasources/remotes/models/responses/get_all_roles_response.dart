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
