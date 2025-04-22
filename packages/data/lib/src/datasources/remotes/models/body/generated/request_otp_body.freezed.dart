// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../request_otp_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RemoteRequestOtpBody {
  String get phoneNumber;

  /// Create a copy of RemoteRequestOtpBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RemoteRequestOtpBodyCopyWith<RemoteRequestOtpBody> get copyWith =>
      _$RemoteRequestOtpBodyCopyWithImpl<RemoteRequestOtpBody>(
          this as RemoteRequestOtpBody, _$identity);

  /// Serializes this RemoteRequestOtpBody to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RemoteRequestOtpBody &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @override
  String toString() {
    return 'RemoteRequestOtpBody(phoneNumber: $phoneNumber)';
  }
}

/// @nodoc
abstract mixin class $RemoteRequestOtpBodyCopyWith<$Res> {
  factory $RemoteRequestOtpBodyCopyWith(RemoteRequestOtpBody value,
          $Res Function(RemoteRequestOtpBody) _then) =
      _$RemoteRequestOtpBodyCopyWithImpl;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class _$RemoteRequestOtpBodyCopyWithImpl<$Res>
    implements $RemoteRequestOtpBodyCopyWith<$Res> {
  _$RemoteRequestOtpBodyCopyWithImpl(this._self, this._then);

  final RemoteRequestOtpBody _self;
  final $Res Function(RemoteRequestOtpBody) _then;

  /// Create a copy of RemoteRequestOtpBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_self.copyWith(
      phoneNumber: null == phoneNumber
          ? _self.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _RemoteRequestOtpBody implements RemoteRequestOtpBody {
  const _RemoteRequestOtpBody({required this.phoneNumber});
  factory _RemoteRequestOtpBody.fromJson(Map<String, dynamic> json) =>
      _$RemoteRequestOtpBodyFromJson(json);

  @override
  final String phoneNumber;

  /// Create a copy of RemoteRequestOtpBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RemoteRequestOtpBodyCopyWith<_RemoteRequestOtpBody> get copyWith =>
      __$RemoteRequestOtpBodyCopyWithImpl<_RemoteRequestOtpBody>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RemoteRequestOtpBodyToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemoteRequestOtpBody &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @override
  String toString() {
    return 'RemoteRequestOtpBody(phoneNumber: $phoneNumber)';
  }
}

/// @nodoc
abstract mixin class _$RemoteRequestOtpBodyCopyWith<$Res>
    implements $RemoteRequestOtpBodyCopyWith<$Res> {
  factory _$RemoteRequestOtpBodyCopyWith(_RemoteRequestOtpBody value,
          $Res Function(_RemoteRequestOtpBody) _then) =
      __$RemoteRequestOtpBodyCopyWithImpl;
  @override
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$RemoteRequestOtpBodyCopyWithImpl<$Res>
    implements _$RemoteRequestOtpBodyCopyWith<$Res> {
  __$RemoteRequestOtpBodyCopyWithImpl(this._self, this._then);

  final _RemoteRequestOtpBody _self;
  final $Res Function(_RemoteRequestOtpBody) _then;

  /// Create a copy of RemoteRequestOtpBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_RemoteRequestOtpBody(
      phoneNumber: null == phoneNumber
          ? _self.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
