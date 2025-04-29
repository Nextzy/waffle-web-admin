import 'package:data/lib.dart';

part 'generated/reset_password_body.freezed.dart';

part 'generated/reset_password_body.g.dart';

@freezed
abstract class RemoteResetPasswordBody with _$RemoteResetPasswordBody {
  const factory RemoteResetPasswordBody({
    required String email,
    required String oldPassword,
    required String newPassword,
  }) = _RemoteResetPasswordBody;

  factory RemoteResetPasswordBody.fromJson(Map<String, dynamic> json) =>
      _$RemoteResetPasswordBodyFromJson(json);
}
