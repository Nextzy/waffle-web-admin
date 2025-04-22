import 'package:data/lib.dart';

part 'generated/echo_response.freezed.dart';

part 'generated/echo_response.g.dart';

@freezed
abstract class RemoteEchoResponse with _$RemoteEchoResponse {
  const factory RemoteEchoResponse({
    String? message,
  }) = _RemoteEchoResponse;

  factory RemoteEchoResponse.fromJson(Map<String, dynamic> json) =>
      _$RemoteEchoResponseFromJson(json);
}
