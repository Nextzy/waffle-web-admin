import 'package:data/lib.dart';

part 'generated/sign_in_with_username_body.freezed.dart';

part 'generated/sign_in_with_username_body.g.dart';

@freezed
abstract class RemoteSignInWithUsernameBody
    with _$RemoteSignInWithUsernameBody {
  const factory RemoteSignInWithUsernameBody({
    required String? username,
    required String? password,
  }) = _RemoteSignInWithUsernameBody;

  factory RemoteSignInWithUsernameBody.fromJson(Map<String, dynamic> json) =>
      _$RemoteSignInWithUsernameBodyFromJson(json);
}
