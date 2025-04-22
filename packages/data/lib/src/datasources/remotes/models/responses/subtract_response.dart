import 'package:data/lib.dart';

part 'generated/subtract_response.freezed.dart';

part 'generated/subtract_response.g.dart';

@freezed
abstract class RemoteSubtractResponse with _$RemoteSubtractResponse {
  const factory RemoteSubtractResponse({
    @JsonKey(name: 'result') int? number,
  }) = _RemoteSubtractResponse;

  factory RemoteSubtractResponse.fromJson(Map<String, dynamic> json) =>
      _$RemoteSubtractResponseFromJson(json);
}
