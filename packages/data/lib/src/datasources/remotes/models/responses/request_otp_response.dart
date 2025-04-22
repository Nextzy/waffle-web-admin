import 'package:data/lib.dart';

part 'generated/request_otp_response.freezed.dart';

part 'generated/request_otp_response.g.dart';

@freezed
abstract class RemoteRequestOtpResponse with _$RemoteRequestOtpResponse {
  const factory RemoteRequestOtpResponse({
    String? status,
    String? token,
    String? refno,
  }) = _RemoteRequestOtpResponse;

  factory RemoteRequestOtpResponse.fromJson(Map<String, dynamic> json) =>
      _$RemoteRequestOtpResponseFromJson(json);
}
