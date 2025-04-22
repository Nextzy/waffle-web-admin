import 'package:data/lib.dart';

part 'generated/verify_otp_body.freezed.dart';

part 'generated/verify_otp_body.g.dart';

@freezed
abstract class RemoteVerifyOtpBody with _$RemoteVerifyOtpBody {
  const factory RemoteVerifyOtpBody({
    required String token,
    required String pin,
  }) = _RemoteVerifyOtpBody;

  factory RemoteVerifyOtpBody.fromJson(Map<String, dynamic> json) =>
      _$RemoteVerifyOtpBodyFromJson(json);
}
