// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../roles_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RolesEntity {
  List<RoleEntity>? get roles;

  /// Create a copy of RolesEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RolesEntityCopyWith<RolesEntity> get copyWith =>
      _$RolesEntityCopyWithImpl<RolesEntity>(this as RolesEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RolesEntity &&
            const DeepCollectionEquality().equals(other.roles, roles));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(roles));

  @override
  String toString() {
    return 'RolesEntity(roles: $roles)';
  }
}

/// @nodoc
abstract mixin class $RolesEntityCopyWith<$Res> {
  factory $RolesEntityCopyWith(
          RolesEntity value, $Res Function(RolesEntity) _then) =
      _$RolesEntityCopyWithImpl;
  @useResult
  $Res call({List<RoleEntity>? roles});
}

/// @nodoc
class _$RolesEntityCopyWithImpl<$Res> implements $RolesEntityCopyWith<$Res> {
  _$RolesEntityCopyWithImpl(this._self, this._then);

  final RolesEntity _self;
  final $Res Function(RolesEntity) _then;

  /// Create a copy of RolesEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roles = freezed,
  }) {
    return _then(_self.copyWith(
      roles: freezed == roles
          ? _self.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<RoleEntity>?,
    ));
  }
}

/// @nodoc

class _RolesEntity implements RolesEntity {
  const _RolesEntity({final List<RoleEntity>? roles}) : _roles = roles;

  final List<RoleEntity>? _roles;
  @override
  List<RoleEntity>? get roles {
    final value = _roles;
    if (value == null) return null;
    if (_roles is EqualUnmodifiableListView) return _roles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of RolesEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RolesEntityCopyWith<_RolesEntity> get copyWith =>
      __$RolesEntityCopyWithImpl<_RolesEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RolesEntity &&
            const DeepCollectionEquality().equals(other._roles, _roles));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_roles));

  @override
  String toString() {
    return 'RolesEntity(roles: $roles)';
  }
}

/// @nodoc
abstract mixin class _$RolesEntityCopyWith<$Res>
    implements $RolesEntityCopyWith<$Res> {
  factory _$RolesEntityCopyWith(
          _RolesEntity value, $Res Function(_RolesEntity) _then) =
      __$RolesEntityCopyWithImpl;
  @override
  @useResult
  $Res call({List<RoleEntity>? roles});
}

/// @nodoc
class __$RolesEntityCopyWithImpl<$Res> implements _$RolesEntityCopyWith<$Res> {
  __$RolesEntityCopyWithImpl(this._self, this._then);

  final _RolesEntity _self;
  final $Res Function(_RolesEntity) _then;

  /// Create a copy of RolesEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? roles = freezed,
  }) {
    return _then(_RolesEntity(
      roles: freezed == roles
          ? _self._roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<RoleEntity>?,
    ));
  }
}

// dart format on
