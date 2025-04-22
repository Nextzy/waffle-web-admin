// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../error_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
ErrorResponse _$ErrorResponseFromJson(Map<String, dynamic> json) {
  return _ErrorResponseResponse.fromJson(json);
}

/// @nodoc
mixin _$ErrorResponse {
  int? get code;
  String? get message;
  String? get userMessage;
  String? get developerMessage;

  /// Create a copy of ErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ErrorResponseCopyWith<ErrorResponse> get copyWith =>
      _$ErrorResponseCopyWithImpl<ErrorResponse>(
          this as ErrorResponse, _$identity);

  /// Serializes this ErrorResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ErrorResponse &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.userMessage, userMessage) ||
                other.userMessage == userMessage) &&
            (identical(other.developerMessage, developerMessage) ||
                other.developerMessage == developerMessage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, code, message, userMessage, developerMessage);

  @override
  String toString() {
    return 'ErrorResponse(code: $code, message: $message, userMessage: $userMessage, developerMessage: $developerMessage)';
  }
}

/// @nodoc
abstract mixin class $ErrorResponseCopyWith<$Res> {
  factory $ErrorResponseCopyWith(
          ErrorResponse value, $Res Function(ErrorResponse) _then) =
      _$ErrorResponseCopyWithImpl;
  @useResult
  $Res call(
      {int? code,
      String? message,
      String? userMessage,
      String? developerMessage});
}

/// @nodoc
class _$ErrorResponseCopyWithImpl<$Res>
    implements $ErrorResponseCopyWith<$Res> {
  _$ErrorResponseCopyWithImpl(this._self, this._then);

  final ErrorResponse _self;
  final $Res Function(ErrorResponse) _then;

  /// Create a copy of ErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? userMessage = freezed,
    Object? developerMessage = freezed,
  }) {
    return _then(_self.copyWith(
      code: freezed == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      userMessage: freezed == userMessage
          ? _self.userMessage
          : userMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      developerMessage: freezed == developerMessage
          ? _self.developerMessage
          : developerMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ErrorResponseResponse implements ErrorResponse {
  const _ErrorResponseResponse(
      {this.code, this.message, this.userMessage, this.developerMessage});
  factory _ErrorResponseResponse.fromJson(Map<String, dynamic> json) =>
      _$ErrorResponseResponseFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final String? userMessage;
  @override
  final String? developerMessage;

  /// Create a copy of ErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ErrorResponseResponseCopyWith<_ErrorResponseResponse> get copyWith =>
      __$ErrorResponseResponseCopyWithImpl<_ErrorResponseResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ErrorResponseResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ErrorResponseResponse &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.userMessage, userMessage) ||
                other.userMessage == userMessage) &&
            (identical(other.developerMessage, developerMessage) ||
                other.developerMessage == developerMessage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, code, message, userMessage, developerMessage);

  @override
  String toString() {
    return 'ErrorResponse(code: $code, message: $message, userMessage: $userMessage, developerMessage: $developerMessage)';
  }
}

/// @nodoc
abstract mixin class _$ErrorResponseResponseCopyWith<$Res>
    implements $ErrorResponseCopyWith<$Res> {
  factory _$ErrorResponseResponseCopyWith(_ErrorResponseResponse value,
          $Res Function(_ErrorResponseResponse) _then) =
      __$ErrorResponseResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int? code,
      String? message,
      String? userMessage,
      String? developerMessage});
}

/// @nodoc
class __$ErrorResponseResponseCopyWithImpl<$Res>
    implements _$ErrorResponseResponseCopyWith<$Res> {
  __$ErrorResponseResponseCopyWithImpl(this._self, this._then);

  final _ErrorResponseResponse _self;
  final $Res Function(_ErrorResponseResponse) _then;

  /// Create a copy of ErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? userMessage = freezed,
    Object? developerMessage = freezed,
  }) {
    return _then(_ErrorResponseResponse(
      code: freezed == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      userMessage: freezed == userMessage
          ? _self.userMessage
          : userMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      developerMessage: freezed == developerMessage
          ? _self.developerMessage
          : developerMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
