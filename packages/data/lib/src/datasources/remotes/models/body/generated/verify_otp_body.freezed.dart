// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../verify_otp_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RemoteVerifyOtpBody {
  String get token;
  String get pin;

  /// Create a copy of RemoteVerifyOtpBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RemoteVerifyOtpBodyCopyWith<RemoteVerifyOtpBody> get copyWith =>
      _$RemoteVerifyOtpBodyCopyWithImpl<RemoteVerifyOtpBody>(
          this as RemoteVerifyOtpBody, _$identity);

  /// Serializes this RemoteVerifyOtpBody to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RemoteVerifyOtpBody &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.pin, pin) || other.pin == pin));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, token, pin);

  @override
  String toString() {
    return 'RemoteVerifyOtpBody(token: $token, pin: $pin)';
  }
}

/// @nodoc
abstract mixin class $RemoteVerifyOtpBodyCopyWith<$Res> {
  factory $RemoteVerifyOtpBodyCopyWith(
          RemoteVerifyOtpBody value, $Res Function(RemoteVerifyOtpBody) _then) =
      _$RemoteVerifyOtpBodyCopyWithImpl;
  @useResult
  $Res call({String token, String pin});
}

/// @nodoc
class _$RemoteVerifyOtpBodyCopyWithImpl<$Res>
    implements $RemoteVerifyOtpBodyCopyWith<$Res> {
  _$RemoteVerifyOtpBodyCopyWithImpl(this._self, this._then);

  final RemoteVerifyOtpBody _self;
  final $Res Function(RemoteVerifyOtpBody) _then;

  /// Create a copy of RemoteVerifyOtpBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? pin = null,
  }) {
    return _then(_self.copyWith(
      token: null == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      pin: null == pin
          ? _self.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _RemoteVerifyOtpBody implements RemoteVerifyOtpBody {
  const _RemoteVerifyOtpBody({required this.token, required this.pin});
  factory _RemoteVerifyOtpBody.fromJson(Map<String, dynamic> json) =>
      _$RemoteVerifyOtpBodyFromJson(json);

  @override
  final String token;
  @override
  final String pin;

  /// Create a copy of RemoteVerifyOtpBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RemoteVerifyOtpBodyCopyWith<_RemoteVerifyOtpBody> get copyWith =>
      __$RemoteVerifyOtpBodyCopyWithImpl<_RemoteVerifyOtpBody>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RemoteVerifyOtpBodyToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemoteVerifyOtpBody &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.pin, pin) || other.pin == pin));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, token, pin);

  @override
  String toString() {
    return 'RemoteVerifyOtpBody(token: $token, pin: $pin)';
  }
}

/// @nodoc
abstract mixin class _$RemoteVerifyOtpBodyCopyWith<$Res>
    implements $RemoteVerifyOtpBodyCopyWith<$Res> {
  factory _$RemoteVerifyOtpBodyCopyWith(_RemoteVerifyOtpBody value,
          $Res Function(_RemoteVerifyOtpBody) _then) =
      __$RemoteVerifyOtpBodyCopyWithImpl;
  @override
  @useResult
  $Res call({String token, String pin});
}

/// @nodoc
class __$RemoteVerifyOtpBodyCopyWithImpl<$Res>
    implements _$RemoteVerifyOtpBodyCopyWith<$Res> {
  __$RemoteVerifyOtpBodyCopyWithImpl(this._self, this._then);

  final _RemoteVerifyOtpBody _self;
  final $Res Function(_RemoteVerifyOtpBody) _then;

  /// Create a copy of RemoteVerifyOtpBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? token = null,
    Object? pin = null,
  }) {
    return _then(_RemoteVerifyOtpBody(
      token: null == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      pin: null == pin
          ? _self.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
