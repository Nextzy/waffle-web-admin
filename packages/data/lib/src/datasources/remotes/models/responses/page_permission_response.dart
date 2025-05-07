import 'package:data/lib.dart';

part 'generated/page_permission_response.freezed.dart';

part 'generated/page_permission_response.g.dart';

@freezed
abstract class RemotePagePermissionResponse
    with _$RemotePagePermissionResponse {
  const factory RemotePagePermissionResponse({
    RemotePermissionResponse? analytics,
    RemotePermissionResponse? campaigns,
    RemotePermissionResponse? games,
    RemotePermissionResponse? customers,
    RemotePermissionResponse? rewardsStock,
    RemotePermissionResponse? consentAndPolicy,
    RemotePermissionResponse? allGames,
    RemotePermissionResponse? users,
    RemotePermissionResponse? roles,
    RemotePermissionResponse? billing,
  }) = _RemotePagePermissionResponse;

  factory RemotePagePermissionResponse.fromJson(Map<String, dynamic> json) =>
      _$RemotePagePermissionResponseFromJson(json);
}
