import 'package:data/lib.dart';

part 'generated/role_response.freezed.dart';

part 'generated/role_response.g.dart';

@freezed
abstract class RemoteRole with _$RemoteRole {
  const factory RemoteRole({
    String? roleId,
    String? name,
    dynamic action,
  }) = _RemoteRole;

  factory RemoteRole.fromJson(Map<String, dynamic> json) =>
      _$RemoteRoleFromJson(json);
}
