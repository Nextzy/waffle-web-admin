import 'package:data/lib.dart';

part 'generated/get_role_body.freezed.dart';

part 'generated/get_role_body.g.dart';

@freezed
abstract class RemoteGetRoleBody with _$RemoteGetRoleBody {
  const factory RemoteGetRoleBody({
    required String roleId,
  }) = _RemoteGetRoleBody;

  factory RemoteGetRoleBody.fromJson(Map<String, dynamic> json) =>
      _$RemoteGetRoleBodyFromJson(json);
}
