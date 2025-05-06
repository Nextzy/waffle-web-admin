// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../role_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RemoteRole {
  String? get roleId;
  String? get name;
  dynamic get action;

  /// Create a copy of RemoteRole
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RemoteRoleCopyWith<RemoteRole> get copyWith =>
      _$RemoteRoleCopyWithImpl<RemoteRole>(this as RemoteRole, _$identity);

  /// Serializes this RemoteRole to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RemoteRole &&
            (identical(other.roleId, roleId) || other.roleId == roleId) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.action, action));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, roleId, name, const DeepCollectionEquality().hash(action));

  @override
  String toString() {
    return 'RemoteRole(roleId: $roleId, name: $name, action: $action)';
  }
}

/// @nodoc
abstract mixin class $RemoteRoleCopyWith<$Res> {
  factory $RemoteRoleCopyWith(
          RemoteRole value, $Res Function(RemoteRole) _then) =
      _$RemoteRoleCopyWithImpl;
  @useResult
  $Res call({String? roleId, String? name, dynamic action});
}

/// @nodoc
class _$RemoteRoleCopyWithImpl<$Res> implements $RemoteRoleCopyWith<$Res> {
  _$RemoteRoleCopyWithImpl(this._self, this._then);

  final RemoteRole _self;
  final $Res Function(RemoteRole) _then;

  /// Create a copy of RemoteRole
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roleId = freezed,
    Object? name = freezed,
    Object? action = freezed,
  }) {
    return _then(_self.copyWith(
      roleId: freezed == roleId
          ? _self.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      action: freezed == action
          ? _self.action
          : action // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _RemoteRole implements RemoteRole {
  const _RemoteRole({this.roleId, this.name, this.action});
  factory _RemoteRole.fromJson(Map<String, dynamic> json) =>
      _$RemoteRoleFromJson(json);

  @override
  final String? roleId;
  @override
  final String? name;
  @override
  final dynamic action;

  /// Create a copy of RemoteRole
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RemoteRoleCopyWith<_RemoteRole> get copyWith =>
      __$RemoteRoleCopyWithImpl<_RemoteRole>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RemoteRoleToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemoteRole &&
            (identical(other.roleId, roleId) || other.roleId == roleId) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.action, action));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, roleId, name, const DeepCollectionEquality().hash(action));

  @override
  String toString() {
    return 'RemoteRole(roleId: $roleId, name: $name, action: $action)';
  }
}

/// @nodoc
abstract mixin class _$RemoteRoleCopyWith<$Res>
    implements $RemoteRoleCopyWith<$Res> {
  factory _$RemoteRoleCopyWith(
          _RemoteRole value, $Res Function(_RemoteRole) _then) =
      __$RemoteRoleCopyWithImpl;
  @override
  @useResult
  $Res call({String? roleId, String? name, dynamic action});
}

/// @nodoc
class __$RemoteRoleCopyWithImpl<$Res> implements _$RemoteRoleCopyWith<$Res> {
  __$RemoteRoleCopyWithImpl(this._self, this._then);

  final _RemoteRole _self;
  final $Res Function(_RemoteRole) _then;

  /// Create a copy of RemoteRole
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? roleId = freezed,
    Object? name = freezed,
    Object? action = freezed,
  }) {
    return _then(_RemoteRole(
      roleId: freezed == roleId
          ? _self.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      action: freezed == action
          ? _self.action
          : action // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

// dart format on
