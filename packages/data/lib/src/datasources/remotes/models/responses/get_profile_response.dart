import 'package:data/lib.dart';

part 'generated/get_profile_response.freezed.dart';

part 'generated/get_profile_response.g.dart';

@freezed
abstract class RemoteGetProfileResponse with _$RemoteGetProfileResponse {
  const factory RemoteGetProfileResponse({
    RemoteUser? user,
  }) = _RemoteGetProfileResponse;

  factory RemoteGetProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$RemoteGetProfileResponseFromJson(json);
}

@freezed
abstract class RemoteUser with _$RemoteUser {
  const factory RemoteUser({
    String? userId,
    String? email,
    String? role,
    String? username,
    String? firstName,
    String? lastName,
    String? phone,
    String? photoUrl,
  }) = _RemoteUser;

  factory RemoteUser.fromJson(Map<String, dynamic> json) =>
      _$RemoteUserFromJson(json);
}
