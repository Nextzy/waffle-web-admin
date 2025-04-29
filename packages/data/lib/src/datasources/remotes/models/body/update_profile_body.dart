import 'package:data/lib.dart';

part 'generated/update_profile_body.freezed.dart';

part 'generated/update_profile_body.g.dart';

@freezed
abstract class RemoteUpdateProfileBody with _$RemoteUpdateProfileBody {
  const factory RemoteUpdateProfileBody({
    required String email,
    required String firstName,
    required String lastName,
    required String phone,
  }) = _RemoteUpdateProfileBody;

  factory RemoteUpdateProfileBody.fromJson(Map<String, dynamic> json) =>
      _$RemoteUpdateProfileBodyFromJson(json);
}
