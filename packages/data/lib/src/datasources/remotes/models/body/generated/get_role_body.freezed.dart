// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../get_role_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RemoteGetRoleBody {
  String get roleId;

  /// Create a copy of RemoteGetRoleBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RemoteGetRoleBodyCopyWith<RemoteGetRoleBody> get copyWith =>
      _$RemoteGetRoleBodyCopyWithImpl<RemoteGetRoleBody>(
          this as RemoteGetRoleBody, _$identity);

  /// Serializes this RemoteGetRoleBody to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RemoteGetRoleBody &&
            (identical(other.roleId, roleId) || other.roleId == roleId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, roleId);

  @override
  String toString() {
    return 'RemoteGetRoleBody(roleId: $roleId)';
  }
}

/// @nodoc
abstract mixin class $RemoteGetRoleBodyCopyWith<$Res> {
  factory $RemoteGetRoleBodyCopyWith(
          RemoteGetRoleBody value, $Res Function(RemoteGetRoleBody) _then) =
      _$RemoteGetRoleBodyCopyWithImpl;
  @useResult
  $Res call({String roleId});
}

/// @nodoc
class _$RemoteGetRoleBodyCopyWithImpl<$Res>
    implements $RemoteGetRoleBodyCopyWith<$Res> {
  _$RemoteGetRoleBodyCopyWithImpl(this._self, this._then);

  final RemoteGetRoleBody _self;
  final $Res Function(RemoteGetRoleBody) _then;

  /// Create a copy of RemoteGetRoleBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roleId = null,
  }) {
    return _then(_self.copyWith(
      roleId: null == roleId
          ? _self.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _RemoteGetRoleBody implements RemoteGetRoleBody {
  const _RemoteGetRoleBody({required this.roleId});
  factory _RemoteGetRoleBody.fromJson(Map<String, dynamic> json) =>
      _$RemoteGetRoleBodyFromJson(json);

  @override
  final String roleId;

  /// Create a copy of RemoteGetRoleBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RemoteGetRoleBodyCopyWith<_RemoteGetRoleBody> get copyWith =>
      __$RemoteGetRoleBodyCopyWithImpl<_RemoteGetRoleBody>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RemoteGetRoleBodyToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemoteGetRoleBody &&
            (identical(other.roleId, roleId) || other.roleId == roleId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, roleId);

  @override
  String toString() {
    return 'RemoteGetRoleBody(roleId: $roleId)';
  }
}

/// @nodoc
abstract mixin class _$RemoteGetRoleBodyCopyWith<$Res>
    implements $RemoteGetRoleBodyCopyWith<$Res> {
  factory _$RemoteGetRoleBodyCopyWith(
          _RemoteGetRoleBody value, $Res Function(_RemoteGetRoleBody) _then) =
      __$RemoteGetRoleBodyCopyWithImpl;
  @override
  @useResult
  $Res call({String roleId});
}

/// @nodoc
class __$RemoteGetRoleBodyCopyWithImpl<$Res>
    implements _$RemoteGetRoleBodyCopyWith<$Res> {
  __$RemoteGetRoleBodyCopyWithImpl(this._self, this._then);

  final _RemoteGetRoleBody _self;
  final $Res Function(_RemoteGetRoleBody) _then;

  /// Create a copy of RemoteGetRoleBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? roleId = null,
  }) {
    return _then(_RemoteGetRoleBody(
      roleId: null == roleId
          ? _self.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
