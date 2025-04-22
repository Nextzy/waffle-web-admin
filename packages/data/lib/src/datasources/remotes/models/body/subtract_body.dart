import 'package:data/lib.dart';

part 'generated/subtract_body.freezed.dart';

part 'generated/subtract_body.g.dart';

@freezed
abstract class RemoteSubtractBody with _$RemoteSubtractBody {
  const factory RemoteSubtractBody({
    required int subtrahend,
    required int minuend,
  }) = _RemoteSubtractBody;

  factory RemoteSubtractBody.fromJson(Map<String, dynamic> json) =>
      _$RemoteSubtractBodyFromJson(json);
}
