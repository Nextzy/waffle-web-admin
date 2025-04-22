import 'package:data/lib.dart';

part 'generated/request_otp_body.freezed.dart';

part 'generated/request_otp_body.g.dart';

@freezed
abstract class RemoteRequestOtpBody with _$RemoteRequestOtpBody {
  const factory RemoteRequestOtpBody({
    required String phoneNumber,
  }) = _RemoteRequestOtpBody;

  factory RemoteRequestOtpBody.fromJson(Map<String, dynamic> json) =>
      _$RemoteRequestOtpBodyFromJson(json);
}
