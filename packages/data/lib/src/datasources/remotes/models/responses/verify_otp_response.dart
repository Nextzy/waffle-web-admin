import 'package:data/lib.dart';

part 'generated/verify_otp_response.freezed.dart';

part 'generated/verify_otp_response.g.dart';

@freezed
abstract class RemoteVerifyOtpResponse with _$RemoteVerifyOtpResponse {
  const factory RemoteVerifyOtpResponse({
    String? status,
    String? message,
  }) = _RemoteVerifyOtpResponse;

  factory RemoteVerifyOtpResponse.fromJson(Map<String, dynamic> json) =>
      _$RemoteVerifyOtpResponseFromJson(json);
}
