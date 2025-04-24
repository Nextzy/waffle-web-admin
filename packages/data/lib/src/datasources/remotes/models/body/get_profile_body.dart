import 'package:data/lib.dart';

part 'generated/get_profile_body.freezed.dart';

part 'generated/get_profile_body.g.dart';

@freezed
abstract class RemoteGetProfileBody with _$RemoteGetProfileBody {
  const factory RemoteGetProfileBody({
    required String email,
  }) = _RemoteGetProfileBody;

  factory RemoteGetProfileBody.fromJson(Map<String, dynamic> json) =>
      _$RemoteGetProfileBodyFromJson(json);
}
