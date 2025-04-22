// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../token_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RemoteAuthenticationResponse {
  @JsonKey(name: 'access_token')
  String? get accessToken;
  String? get refreshToken;

  /// Create a copy of RemoteAuthenticationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RemoteAuthenticationResponseCopyWith<RemoteAuthenticationResponse>
      get copyWith => _$RemoteAuthenticationResponseCopyWithImpl<
              RemoteAuthenticationResponse>(
          this as RemoteAuthenticationResponse, _$identity);

  /// Serializes this RemoteAuthenticationResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RemoteAuthenticationResponse &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, refreshToken);

  @override
  String toString() {
    return 'RemoteAuthenticationResponse(accessToken: $accessToken, refreshToken: $refreshToken)';
  }
}

/// @nodoc
abstract mixin class $RemoteAuthenticationResponseCopyWith<$Res> {
  factory $RemoteAuthenticationResponseCopyWith(
          RemoteAuthenticationResponse value,
          $Res Function(RemoteAuthenticationResponse) _then) =
      _$RemoteAuthenticationResponseCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'access_token') String? accessToken,
      String? refreshToken});
}

/// @nodoc
class _$RemoteAuthenticationResponseCopyWithImpl<$Res>
    implements $RemoteAuthenticationResponseCopyWith<$Res> {
  _$RemoteAuthenticationResponseCopyWithImpl(this._self, this._then);

  final RemoteAuthenticationResponse _self;
  final $Res Function(RemoteAuthenticationResponse) _then;

  /// Create a copy of RemoteAuthenticationResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_self.copyWith(
      accessToken: freezed == accessToken
          ? _self.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _self.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _RemoteAuthenticationResponse implements RemoteAuthenticationResponse {
  const _RemoteAuthenticationResponse(
      {@JsonKey(name: 'access_token') this.accessToken, this.refreshToken});
  factory _RemoteAuthenticationResponse.fromJson(Map<String, dynamic> json) =>
      _$RemoteAuthenticationResponseFromJson(json);

  @override
  @JsonKey(name: 'access_token')
  final String? accessToken;
  @override
  final String? refreshToken;

  /// Create a copy of RemoteAuthenticationResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RemoteAuthenticationResponseCopyWith<_RemoteAuthenticationResponse>
      get copyWith => __$RemoteAuthenticationResponseCopyWithImpl<
          _RemoteAuthenticationResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RemoteAuthenticationResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemoteAuthenticationResponse &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, refreshToken);

  @override
  String toString() {
    return 'RemoteAuthenticationResponse(accessToken: $accessToken, refreshToken: $refreshToken)';
  }
}

/// @nodoc
abstract mixin class _$RemoteAuthenticationResponseCopyWith<$Res>
    implements $RemoteAuthenticationResponseCopyWith<$Res> {
  factory _$RemoteAuthenticationResponseCopyWith(
          _RemoteAuthenticationResponse value,
          $Res Function(_RemoteAuthenticationResponse) _then) =
      __$RemoteAuthenticationResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'access_token') String? accessToken,
      String? refreshToken});
}

/// @nodoc
class __$RemoteAuthenticationResponseCopyWithImpl<$Res>
    implements _$RemoteAuthenticationResponseCopyWith<$Res> {
  __$RemoteAuthenticationResponseCopyWithImpl(this._self, this._then);

  final _RemoteAuthenticationResponse _self;
  final $Res Function(_RemoteAuthenticationResponse) _then;

  /// Create a copy of RemoteAuthenticationResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_RemoteAuthenticationResponse(
      accessToken: freezed == accessToken
          ? _self.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _self.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
