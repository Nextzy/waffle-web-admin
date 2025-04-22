import 'package:data/lib.dart';

part 'generated/echo_body.freezed.dart';

part 'generated/echo_body.g.dart';

@freezed
abstract class RemoteEchoBody with _$RemoteEchoBody {
  const factory RemoteEchoBody({
    required String name,
  }) = _RemoteEchoBody;

  factory RemoteEchoBody.fromJson(Map<String, dynamic> json) =>
      _$RemoteEchoBodyFromJson(json);
}
