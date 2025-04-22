// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../verify_otp_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RemoteVerifyOtpResponse {
  String? get status;
  String? get message;

  /// Create a copy of RemoteVerifyOtpResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RemoteVerifyOtpResponseCopyWith<RemoteVerifyOtpResponse> get copyWith =>
      _$RemoteVerifyOtpResponseCopyWithImpl<RemoteVerifyOtpResponse>(
          this as RemoteVerifyOtpResponse, _$identity);

  /// Serializes this RemoteVerifyOtpResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RemoteVerifyOtpResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  @override
  String toString() {
    return 'RemoteVerifyOtpResponse(status: $status, message: $message)';
  }
}

/// @nodoc
abstract mixin class $RemoteVerifyOtpResponseCopyWith<$Res> {
  factory $RemoteVerifyOtpResponseCopyWith(RemoteVerifyOtpResponse value,
          $Res Function(RemoteVerifyOtpResponse) _then) =
      _$RemoteVerifyOtpResponseCopyWithImpl;
  @useResult
  $Res call({String? status, String? message});
}

/// @nodoc
class _$RemoteVerifyOtpResponseCopyWithImpl<$Res>
    implements $RemoteVerifyOtpResponseCopyWith<$Res> {
  _$RemoteVerifyOtpResponseCopyWithImpl(this._self, this._then);

  final RemoteVerifyOtpResponse _self;
  final $Res Function(RemoteVerifyOtpResponse) _then;

  /// Create a copy of RemoteVerifyOtpResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_self.copyWith(
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _RemoteVerifyOtpResponse implements RemoteVerifyOtpResponse {
  const _RemoteVerifyOtpResponse({this.status, this.message});
  factory _RemoteVerifyOtpResponse.fromJson(Map<String, dynamic> json) =>
      _$RemoteVerifyOtpResponseFromJson(json);

  @override
  final String? status;
  @override
  final String? message;

  /// Create a copy of RemoteVerifyOtpResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RemoteVerifyOtpResponseCopyWith<_RemoteVerifyOtpResponse> get copyWith =>
      __$RemoteVerifyOtpResponseCopyWithImpl<_RemoteVerifyOtpResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RemoteVerifyOtpResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemoteVerifyOtpResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  @override
  String toString() {
    return 'RemoteVerifyOtpResponse(status: $status, message: $message)';
  }
}

/// @nodoc
abstract mixin class _$RemoteVerifyOtpResponseCopyWith<$Res>
    implements $RemoteVerifyOtpResponseCopyWith<$Res> {
  factory _$RemoteVerifyOtpResponseCopyWith(_RemoteVerifyOtpResponse value,
          $Res Function(_RemoteVerifyOtpResponse) _then) =
      __$RemoteVerifyOtpResponseCopyWithImpl;
  @override
  @useResult
  $Res call({String? status, String? message});
}

/// @nodoc
class __$RemoteVerifyOtpResponseCopyWithImpl<$Res>
    implements _$RemoteVerifyOtpResponseCopyWith<$Res> {
  __$RemoteVerifyOtpResponseCopyWithImpl(this._self, this._then);

  final _RemoteVerifyOtpResponse _self;
  final $Res Function(_RemoteVerifyOtpResponse) _then;

  /// Create a copy of RemoteVerifyOtpResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_RemoteVerifyOtpResponse(
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
