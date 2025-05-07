// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../permission_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PermissionEntity {
  String get page;
  bool get isVisible;
  bool get canCreate;
  bool get canUpdate;
  bool get canDelete;

  /// Create a copy of PermissionEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PermissionEntityCopyWith<PermissionEntity> get copyWith =>
      _$PermissionEntityCopyWithImpl<PermissionEntity>(
          this as PermissionEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PermissionEntity &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.isVisible, isVisible) ||
                other.isVisible == isVisible) &&
            (identical(other.canCreate, canCreate) ||
                other.canCreate == canCreate) &&
            (identical(other.canUpdate, canUpdate) ||
                other.canUpdate == canUpdate) &&
            (identical(other.canDelete, canDelete) ||
                other.canDelete == canDelete));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, page, isVisible, canCreate, canUpdate, canDelete);

  @override
  String toString() {
    return 'PermissionEntity(page: $page, isVisible: $isVisible, canCreate: $canCreate, canUpdate: $canUpdate, canDelete: $canDelete)';
  }
}

/// @nodoc
abstract mixin class $PermissionEntityCopyWith<$Res> {
  factory $PermissionEntityCopyWith(
          PermissionEntity value, $Res Function(PermissionEntity) _then) =
      _$PermissionEntityCopyWithImpl;
  @useResult
  $Res call(
      {String page,
      bool isVisible,
      bool canCreate,
      bool canUpdate,
      bool canDelete});
}

/// @nodoc
class _$PermissionEntityCopyWithImpl<$Res>
    implements $PermissionEntityCopyWith<$Res> {
  _$PermissionEntityCopyWithImpl(this._self, this._then);

  final PermissionEntity _self;
  final $Res Function(PermissionEntity) _then;

  /// Create a copy of PermissionEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? isVisible = null,
    Object? canCreate = null,
    Object? canUpdate = null,
    Object? canDelete = null,
  }) {
    return _then(_self.copyWith(
      page: null == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as String,
      isVisible: null == isVisible
          ? _self.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      canCreate: null == canCreate
          ? _self.canCreate
          : canCreate // ignore: cast_nullable_to_non_nullable
              as bool,
      canUpdate: null == canUpdate
          ? _self.canUpdate
          : canUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
      canDelete: null == canDelete
          ? _self.canDelete
          : canDelete // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _PermissionEntity implements PermissionEntity {
  const _PermissionEntity(
      {this.page = '',
      this.isVisible = false,
      this.canCreate = false,
      this.canUpdate = false,
      this.canDelete = false});

  @override
  @JsonKey()
  final String page;
  @override
  @JsonKey()
  final bool isVisible;
  @override
  @JsonKey()
  final bool canCreate;
  @override
  @JsonKey()
  final bool canUpdate;
  @override
  @JsonKey()
  final bool canDelete;

  /// Create a copy of PermissionEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PermissionEntityCopyWith<_PermissionEntity> get copyWith =>
      __$PermissionEntityCopyWithImpl<_PermissionEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PermissionEntity &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.isVisible, isVisible) ||
                other.isVisible == isVisible) &&
            (identical(other.canCreate, canCreate) ||
                other.canCreate == canCreate) &&
            (identical(other.canUpdate, canUpdate) ||
                other.canUpdate == canUpdate) &&
            (identical(other.canDelete, canDelete) ||
                other.canDelete == canDelete));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, page, isVisible, canCreate, canUpdate, canDelete);

  @override
  String toString() {
    return 'PermissionEntity(page: $page, isVisible: $isVisible, canCreate: $canCreate, canUpdate: $canUpdate, canDelete: $canDelete)';
  }
}

/// @nodoc
abstract mixin class _$PermissionEntityCopyWith<$Res>
    implements $PermissionEntityCopyWith<$Res> {
  factory _$PermissionEntityCopyWith(
          _PermissionEntity value, $Res Function(_PermissionEntity) _then) =
      __$PermissionEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String page,
      bool isVisible,
      bool canCreate,
      bool canUpdate,
      bool canDelete});
}

/// @nodoc
class __$PermissionEntityCopyWithImpl<$Res>
    implements _$PermissionEntityCopyWith<$Res> {
  __$PermissionEntityCopyWithImpl(this._self, this._then);

  final _PermissionEntity _self;
  final $Res Function(_PermissionEntity) _then;

  /// Create a copy of PermissionEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? page = null,
    Object? isVisible = null,
    Object? canCreate = null,
    Object? canUpdate = null,
    Object? canDelete = null,
  }) {
    return _then(_PermissionEntity(
      page: null == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as String,
      isVisible: null == isVisible
          ? _self.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      canCreate: null == canCreate
          ? _self.canCreate
          : canCreate // ignore: cast_nullable_to_non_nullable
              as bool,
      canUpdate: null == canUpdate
          ? _self.canUpdate
          : canUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
      canDelete: null == canDelete
          ? _self.canDelete
          : canDelete // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
