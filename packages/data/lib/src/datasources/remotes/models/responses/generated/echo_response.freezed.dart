// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../echo_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RemoteEchoResponse {
  String? get message;

  /// Create a copy of RemoteEchoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RemoteEchoResponseCopyWith<RemoteEchoResponse> get copyWith =>
      _$RemoteEchoResponseCopyWithImpl<RemoteEchoResponse>(
          this as RemoteEchoResponse, _$identity);

  /// Serializes this RemoteEchoResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RemoteEchoResponse &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'RemoteEchoResponse(message: $message)';
  }
}

/// @nodoc
abstract mixin class $RemoteEchoResponseCopyWith<$Res> {
  factory $RemoteEchoResponseCopyWith(
          RemoteEchoResponse value, $Res Function(RemoteEchoResponse) _then) =
      _$RemoteEchoResponseCopyWithImpl;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$RemoteEchoResponseCopyWithImpl<$Res>
    implements $RemoteEchoResponseCopyWith<$Res> {
  _$RemoteEchoResponseCopyWithImpl(this._self, this._then);

  final RemoteEchoResponse _self;
  final $Res Function(RemoteEchoResponse) _then;

  /// Create a copy of RemoteEchoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_self.copyWith(
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _RemoteEchoResponse implements RemoteEchoResponse {
  const _RemoteEchoResponse({this.message});
  factory _RemoteEchoResponse.fromJson(Map<String, dynamic> json) =>
      _$RemoteEchoResponseFromJson(json);

  @override
  final String? message;

  /// Create a copy of RemoteEchoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RemoteEchoResponseCopyWith<_RemoteEchoResponse> get copyWith =>
      __$RemoteEchoResponseCopyWithImpl<_RemoteEchoResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RemoteEchoResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemoteEchoResponse &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'RemoteEchoResponse(message: $message)';
  }
}

/// @nodoc
abstract mixin class _$RemoteEchoResponseCopyWith<$Res>
    implements $RemoteEchoResponseCopyWith<$Res> {
  factory _$RemoteEchoResponseCopyWith(
          _RemoteEchoResponse value, $Res Function(_RemoteEchoResponse) _then) =
      __$RemoteEchoResponseCopyWithImpl;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$RemoteEchoResponseCopyWithImpl<$Res>
    implements _$RemoteEchoResponseCopyWith<$Res> {
  __$RemoteEchoResponseCopyWithImpl(this._self, this._then);

  final _RemoteEchoResponse _self;
  final $Res Function(_RemoteEchoResponse) _then;

  /// Create a copy of RemoteEchoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_RemoteEchoResponse(
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
