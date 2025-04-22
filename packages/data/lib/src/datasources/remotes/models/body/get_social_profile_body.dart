import 'package:data/lib.dart';

part 'generated/get_social_profile_body.freezed.dart';

part 'generated/get_social_profile_body.g.dart';

@freezed
abstract class RemoteGetSocialProfileBody with _$RemoteGetSocialProfileBody {
  const factory RemoteGetSocialProfileBody({
    required String accessToken,
    required String social,
  }) = _RemoteGetSocialProfileBody;

  factory RemoteGetSocialProfileBody.fromJson(Map<String, dynamic> json) =>
      _$RemoteGetSocialProfileBodyFromJson(json);
}
