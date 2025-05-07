import 'package:data/lib.dart';

part 'generated/permission_response.freezed.dart';

part 'generated/permission_response.g.dart';

@freezed
abstract class RemotePermissionResponse with _$RemotePermissionResponse {
  const factory RemotePermissionResponse({
    required bool visible,
    required bool create,
    required bool update,
    required bool delete,
  }) = _RemotePermissionResponse;

  factory RemotePermissionResponse.fromJson(Map<String, dynamic> json) =>
      _$RemotePermissionResponseFromJson(json);
}
