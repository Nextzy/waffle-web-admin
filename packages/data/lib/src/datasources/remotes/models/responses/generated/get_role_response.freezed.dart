// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../get_role_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RemoteGetRoleResponse {
  RemoteRole? get role;

  /// Create a copy of RemoteGetRoleResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RemoteGetRoleResponseCopyWith<RemoteGetRoleResponse> get copyWith =>
      _$RemoteGetRoleResponseCopyWithImpl<RemoteGetRoleResponse>(
          this as RemoteGetRoleResponse, _$identity);

  /// Serializes this RemoteGetRoleResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RemoteGetRoleResponse &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, role);

  @override
  String toString() {
    return 'RemoteGetRoleResponse(role: $role)';
  }
}

/// @nodoc
abstract mixin class $RemoteGetRoleResponseCopyWith<$Res> {
  factory $RemoteGetRoleResponseCopyWith(RemoteGetRoleResponse value,
          $Res Function(RemoteGetRoleResponse) _then) =
      _$RemoteGetRoleResponseCopyWithImpl;
  @useResult
  $Res call({RemoteRole? role});

  $RemoteRoleCopyWith<$Res>? get role;
}

/// @nodoc
class _$RemoteGetRoleResponseCopyWithImpl<$Res>
    implements $RemoteGetRoleResponseCopyWith<$Res> {
  _$RemoteGetRoleResponseCopyWithImpl(this._self, this._then);

  final RemoteGetRoleResponse _self;
  final $Res Function(RemoteGetRoleResponse) _then;

  /// Create a copy of RemoteGetRoleResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = freezed,
  }) {
    return _then(_self.copyWith(
      role: freezed == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as RemoteRole?,
    ));
  }

  /// Create a copy of RemoteGetRoleResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RemoteRoleCopyWith<$Res>? get role {
    if (_self.role == null) {
      return null;
    }

    return $RemoteRoleCopyWith<$Res>(_self.role!, (value) {
      return _then(_self.copyWith(role: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _RemoteGetRoleResponse implements RemoteGetRoleResponse {
  const _RemoteGetRoleResponse({this.role});
  factory _RemoteGetRoleResponse.fromJson(Map<String, dynamic> json) =>
      _$RemoteGetRoleResponseFromJson(json);

  @override
  final RemoteRole? role;

  /// Create a copy of RemoteGetRoleResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RemoteGetRoleResponseCopyWith<_RemoteGetRoleResponse> get copyWith =>
      __$RemoteGetRoleResponseCopyWithImpl<_RemoteGetRoleResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RemoteGetRoleResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemoteGetRoleResponse &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, role);

  @override
  String toString() {
    return 'RemoteGetRoleResponse(role: $role)';
  }
}

/// @nodoc
abstract mixin class _$RemoteGetRoleResponseCopyWith<$Res>
    implements $RemoteGetRoleResponseCopyWith<$Res> {
  factory _$RemoteGetRoleResponseCopyWith(_RemoteGetRoleResponse value,
          $Res Function(_RemoteGetRoleResponse) _then) =
      __$RemoteGetRoleResponseCopyWithImpl;
  @override
  @useResult
  $Res call({RemoteRole? role});

  @override
  $RemoteRoleCopyWith<$Res>? get role;
}

/// @nodoc
class __$RemoteGetRoleResponseCopyWithImpl<$Res>
    implements _$RemoteGetRoleResponseCopyWith<$Res> {
  __$RemoteGetRoleResponseCopyWithImpl(this._self, this._then);

  final _RemoteGetRoleResponse _self;
  final $Res Function(_RemoteGetRoleResponse) _then;

  /// Create a copy of RemoteGetRoleResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? role = freezed,
  }) {
    return _then(_RemoteGetRoleResponse(
      role: freezed == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as RemoteRole?,
    ));
  }

  /// Create a copy of RemoteGetRoleResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RemoteRoleCopyWith<$Res>? get role {
    if (_self.role == null) {
      return null;
    }

    return $RemoteRoleCopyWith<$Res>(_self.role!, (value) {
      return _then(_self.copyWith(role: value));
    });
  }
}

// dart format on
