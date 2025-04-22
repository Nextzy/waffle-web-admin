import 'package:data/lib.dart';

part 'generated/error_response.freezed.dart';

part 'generated/error_response.g.dart';

@freezed
abstract class ErrorResponse with _$ErrorResponse {
  const factory ErrorResponse({
    int? code,
    String? message,
    String? userMessage,
    String? developerMessage,
  }) = _ErrorResponseResponse;

  factory ErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$ErrorResponseFromJson(json);
}

