// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../role_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RoleEntity {
  String? get roleId;
  String? get name;
  PagePermissionEntity? get pagePermission;

  /// Create a copy of RoleEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RoleEntityCopyWith<RoleEntity> get copyWith =>
      _$RoleEntityCopyWithImpl<RoleEntity>(this as RoleEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RoleEntity &&
            (identical(other.roleId, roleId) || other.roleId == roleId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.pagePermission, pagePermission) ||
                other.pagePermission == pagePermission));
  }

  @override
  int get hashCode => Object.hash(runtimeType, roleId, name, pagePermission);

  @override
  String toString() {
    return 'RoleEntity(roleId: $roleId, name: $name, pagePermission: $pagePermission)';
  }
}

/// @nodoc
abstract mixin class $RoleEntityCopyWith<$Res> {
  factory $RoleEntityCopyWith(
          RoleEntity value, $Res Function(RoleEntity) _then) =
      _$RoleEntityCopyWithImpl;
  @useResult
  $Res call(
      {String? roleId, String? name, PagePermissionEntity? pagePermission});

  $PagePermissionEntityCopyWith<$Res>? get pagePermission;
}

/// @nodoc
class _$RoleEntityCopyWithImpl<$Res> implements $RoleEntityCopyWith<$Res> {
  _$RoleEntityCopyWithImpl(this._self, this._then);

  final RoleEntity _self;
  final $Res Function(RoleEntity) _then;

  /// Create a copy of RoleEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roleId = freezed,
    Object? name = freezed,
    Object? pagePermission = freezed,
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
      pagePermission: freezed == pagePermission
          ? _self.pagePermission
          : pagePermission // ignore: cast_nullable_to_non_nullable
              as PagePermissionEntity?,
    ));
  }

  /// Create a copy of RoleEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PagePermissionEntityCopyWith<$Res>? get pagePermission {
    if (_self.pagePermission == null) {
      return null;
    }

    return $PagePermissionEntityCopyWith<$Res>(_self.pagePermission!, (value) {
      return _then(_self.copyWith(pagePermission: value));
    });
  }
}

/// @nodoc

class _RoleEntity implements RoleEntity {
  const _RoleEntity({this.roleId, this.name, this.pagePermission});

  @override
  final String? roleId;
  @override
  final String? name;
  @override
  final PagePermissionEntity? pagePermission;

  /// Create a copy of RoleEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RoleEntityCopyWith<_RoleEntity> get copyWith =>
      __$RoleEntityCopyWithImpl<_RoleEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RoleEntity &&
            (identical(other.roleId, roleId) || other.roleId == roleId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.pagePermission, pagePermission) ||
                other.pagePermission == pagePermission));
  }

  @override
  int get hashCode => Object.hash(runtimeType, roleId, name, pagePermission);

  @override
  String toString() {
    return 'RoleEntity(roleId: $roleId, name: $name, pagePermission: $pagePermission)';
  }
}

/// @nodoc
abstract mixin class _$RoleEntityCopyWith<$Res>
    implements $RoleEntityCopyWith<$Res> {
  factory _$RoleEntityCopyWith(
          _RoleEntity value, $Res Function(_RoleEntity) _then) =
      __$RoleEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? roleId, String? name, PagePermissionEntity? pagePermission});

  @override
  $PagePermissionEntityCopyWith<$Res>? get pagePermission;
}

/// @nodoc
class __$RoleEntityCopyWithImpl<$Res> implements _$RoleEntityCopyWith<$Res> {
  __$RoleEntityCopyWithImpl(this._self, this._then);

  final _RoleEntity _self;
  final $Res Function(_RoleEntity) _then;

  /// Create a copy of RoleEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? roleId = freezed,
    Object? name = freezed,
    Object? pagePermission = freezed,
  }) {
    return _then(_RoleEntity(
      roleId: freezed == roleId
          ? _self.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      pagePermission: freezed == pagePermission
          ? _self.pagePermission
          : pagePermission // ignore: cast_nullable_to_non_nullable
              as PagePermissionEntity?,
    ));
  }

  /// Create a copy of RoleEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PagePermissionEntityCopyWith<$Res>? get pagePermission {
    if (_self.pagePermission == null) {
      return null;
    }

    return $PagePermissionEntityCopyWith<$Res>(_self.pagePermission!, (value) {
      return _then(_self.copyWith(pagePermission: value));
    });
  }
}

// dart format on
