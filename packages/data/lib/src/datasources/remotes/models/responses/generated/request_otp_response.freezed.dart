// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../request_otp_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RemoteRequestOtpResponse {
  String? get status;
  String? get token;
  String? get refno;

  /// Create a copy of RemoteRequestOtpResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RemoteRequestOtpResponseCopyWith<RemoteRequestOtpResponse> get copyWith =>
      _$RemoteRequestOtpResponseCopyWithImpl<RemoteRequestOtpResponse>(
          this as RemoteRequestOtpResponse, _$identity);

  /// Serializes this RemoteRequestOtpResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RemoteRequestOtpResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.refno, refno) || other.refno == refno));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, token, refno);

  @override
  String toString() {
    return 'RemoteRequestOtpResponse(status: $status, token: $token, refno: $refno)';
  }
}

/// @nodoc
abstract mixin class $RemoteRequestOtpResponseCopyWith<$Res> {
  factory $RemoteRequestOtpResponseCopyWith(RemoteRequestOtpResponse value,
          $Res Function(RemoteRequestOtpResponse) _then) =
      _$RemoteRequestOtpResponseCopyWithImpl;
  @useResult
  $Res call({String? status, String? token, String? refno});
}

/// @nodoc
class _$RemoteRequestOtpResponseCopyWithImpl<$Res>
    implements $RemoteRequestOtpResponseCopyWith<$Res> {
  _$RemoteRequestOtpResponseCopyWithImpl(this._self, this._then);

  final RemoteRequestOtpResponse _self;
  final $Res Function(RemoteRequestOtpResponse) _then;

  /// Create a copy of RemoteRequestOtpResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? token = freezed,
    Object? refno = freezed,
  }) {
    return _then(_self.copyWith(
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      refno: freezed == refno
          ? _self.refno
          : refno // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _RemoteRequestOtpResponse implements RemoteRequestOtpResponse {
  const _RemoteRequestOtpResponse({this.status, this.token, this.refno});
  factory _RemoteRequestOtpResponse.fromJson(Map<String, dynamic> json) =>
      _$RemoteRequestOtpResponseFromJson(json);

  @override
  final String? status;
  @override
  final String? token;
  @override
  final String? refno;

  /// Create a copy of RemoteRequestOtpResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RemoteRequestOtpResponseCopyWith<_RemoteRequestOtpResponse> get copyWith =>
      __$RemoteRequestOtpResponseCopyWithImpl<_RemoteRequestOtpResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RemoteRequestOtpResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemoteRequestOtpResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.refno, refno) || other.refno == refno));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, token, refno);

  @override
  String toString() {
    return 'RemoteRequestOtpResponse(status: $status, token: $token, refno: $refno)';
  }
}

/// @nodoc
abstract mixin class _$RemoteRequestOtpResponseCopyWith<$Res>
    implements $RemoteRequestOtpResponseCopyWith<$Res> {
  factory _$RemoteRequestOtpResponseCopyWith(_RemoteRequestOtpResponse value,
          $Res Function(_RemoteRequestOtpResponse) _then) =
      __$RemoteRequestOtpResponseCopyWithImpl;
  @override
  @useResult
  $Res call({String? status, String? token, String? refno});
}

/// @nodoc
class __$RemoteRequestOtpResponseCopyWithImpl<$Res>
    implements _$RemoteRequestOtpResponseCopyWith<$Res> {
  __$RemoteRequestOtpResponseCopyWithImpl(this._self, this._then);

  final _RemoteRequestOtpResponse _self;
  final $Res Function(_RemoteRequestOtpResponse) _then;

  /// Create a copy of RemoteRequestOtpResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = freezed,
    Object? token = freezed,
    Object? refno = freezed,
  }) {
    return _then(_RemoteRequestOtpResponse(
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      refno: freezed == refno
          ? _self.refno
          : refno // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
