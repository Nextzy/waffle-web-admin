// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../get_profile_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RemoteGetProfileResponse {
  String? get userId;
  String? get username;

  /// Create a copy of RemoteGetProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RemoteGetProfileResponseCopyWith<RemoteGetProfileResponse> get copyWith =>
      _$RemoteGetProfileResponseCopyWithImpl<RemoteGetProfileResponse>(
          this as RemoteGetProfileResponse, _$identity);

  /// Serializes this RemoteGetProfileResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RemoteGetProfileResponse &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, username);

  @override
  String toString() {
    return 'RemoteGetProfileResponse(userId: $userId, username: $username)';
  }
}

/// @nodoc
abstract mixin class $RemoteGetProfileResponseCopyWith<$Res> {
  factory $RemoteGetProfileResponseCopyWith(RemoteGetProfileResponse value,
          $Res Function(RemoteGetProfileResponse) _then) =
      _$RemoteGetProfileResponseCopyWithImpl;
  @useResult
  $Res call({String? userId, String? username});
}

/// @nodoc
class _$RemoteGetProfileResponseCopyWithImpl<$Res>
    implements $RemoteGetProfileResponseCopyWith<$Res> {
  _$RemoteGetProfileResponseCopyWithImpl(this._self, this._then);

  final RemoteGetProfileResponse _self;
  final $Res Function(RemoteGetProfileResponse) _then;

  /// Create a copy of RemoteGetProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? username = freezed,
  }) {
    return _then(_self.copyWith(
      userId: freezed == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _RemoteGetProfileResponse implements RemoteGetProfileResponse {
  const _RemoteGetProfileResponse({this.userId, this.username});
  factory _RemoteGetProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$RemoteGetProfileResponseFromJson(json);

  @override
  final String? userId;
  @override
  final String? username;

  /// Create a copy of RemoteGetProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RemoteGetProfileResponseCopyWith<_RemoteGetProfileResponse> get copyWith =>
      __$RemoteGetProfileResponseCopyWithImpl<_RemoteGetProfileResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RemoteGetProfileResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemoteGetProfileResponse &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, username);

  @override
  String toString() {
    return 'RemoteGetProfileResponse(userId: $userId, username: $username)';
  }
}

/// @nodoc
abstract mixin class _$RemoteGetProfileResponseCopyWith<$Res>
    implements $RemoteGetProfileResponseCopyWith<$Res> {
  factory _$RemoteGetProfileResponseCopyWith(_RemoteGetProfileResponse value,
          $Res Function(_RemoteGetProfileResponse) _then) =
      __$RemoteGetProfileResponseCopyWithImpl;
  @override
  @useResult
  $Res call({String? userId, String? username});
}

/// @nodoc
class __$RemoteGetProfileResponseCopyWithImpl<$Res>
    implements _$RemoteGetProfileResponseCopyWith<$Res> {
  __$RemoteGetProfileResponseCopyWithImpl(this._self, this._then);

  final _RemoteGetProfileResponse _self;
  final $Res Function(_RemoteGetProfileResponse) _then;

  /// Create a copy of RemoteGetProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? userId = freezed,
    Object? username = freezed,
  }) {
    return _then(_RemoteGetProfileResponse(
      userId: freezed == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
