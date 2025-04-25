// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../console_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ConsoleEntity {
  ProfileEntity? get profile;

  /// Create a copy of ConsoleEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ConsoleEntityCopyWith<ConsoleEntity> get copyWith =>
      _$ConsoleEntityCopyWithImpl<ConsoleEntity>(
          this as ConsoleEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ConsoleEntity &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profile);

  @override
  String toString() {
    return 'ConsoleEntity(profile: $profile)';
  }
}

/// @nodoc
abstract mixin class $ConsoleEntityCopyWith<$Res> {
  factory $ConsoleEntityCopyWith(
          ConsoleEntity value, $Res Function(ConsoleEntity) _then) =
      _$ConsoleEntityCopyWithImpl;
  @useResult
  $Res call({ProfileEntity? profile});

  $ProfileEntityCopyWith<$Res>? get profile;
}

/// @nodoc
class _$ConsoleEntityCopyWithImpl<$Res>
    implements $ConsoleEntityCopyWith<$Res> {
  _$ConsoleEntityCopyWithImpl(this._self, this._then);

  final ConsoleEntity _self;
  final $Res Function(ConsoleEntity) _then;

  /// Create a copy of ConsoleEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = freezed,
  }) {
    return _then(_self.copyWith(
      profile: freezed == profile
          ? _self.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileEntity?,
    ));
  }

  /// Create a copy of ConsoleEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileEntityCopyWith<$Res>? get profile {
    if (_self.profile == null) {
      return null;
    }

    return $ProfileEntityCopyWith<$Res>(_self.profile!, (value) {
      return _then(_self.copyWith(profile: value));
    });
  }
}

/// @nodoc

class _ConsoleEntity implements ConsoleEntity {
  const _ConsoleEntity({this.profile});

  @override
  final ProfileEntity? profile;

  /// Create a copy of ConsoleEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ConsoleEntityCopyWith<_ConsoleEntity> get copyWith =>
      __$ConsoleEntityCopyWithImpl<_ConsoleEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ConsoleEntity &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profile);

  @override
  String toString() {
    return 'ConsoleEntity(profile: $profile)';
  }
}

/// @nodoc
abstract mixin class _$ConsoleEntityCopyWith<$Res>
    implements $ConsoleEntityCopyWith<$Res> {
  factory _$ConsoleEntityCopyWith(
          _ConsoleEntity value, $Res Function(_ConsoleEntity) _then) =
      __$ConsoleEntityCopyWithImpl;
  @override
  @useResult
  $Res call({ProfileEntity? profile});

  @override
  $ProfileEntityCopyWith<$Res>? get profile;
}

/// @nodoc
class __$ConsoleEntityCopyWithImpl<$Res>
    implements _$ConsoleEntityCopyWith<$Res> {
  __$ConsoleEntityCopyWithImpl(this._self, this._then);

  final _ConsoleEntity _self;
  final $Res Function(_ConsoleEntity) _then;

  /// Create a copy of ConsoleEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? profile = freezed,
  }) {
    return _then(_ConsoleEntity(
      profile: freezed == profile
          ? _self.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileEntity?,
    ));
  }

  /// Create a copy of ConsoleEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileEntityCopyWith<$Res>? get profile {
    if (_self.profile == null) {
      return null;
    }

    return $ProfileEntityCopyWith<$Res>(_self.profile!, (value) {
      return _then(_self.copyWith(profile: value));
    });
  }
}

// dart format on
