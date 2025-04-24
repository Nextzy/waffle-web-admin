import 'package:data/lib.dart';

part 'generated/get_profile_response.freezed.dart';

part 'generated/get_profile_response.g.dart';

@freezed
abstract class RemoteGetProfileResponse with _$RemoteGetProfileResponse {
  const factory RemoteGetProfileResponse({
    dynamic user,
  }) = _RemoteGetProfileResponse;

  factory RemoteGetProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$RemoteGetProfileResponseFromJson(json);
}
