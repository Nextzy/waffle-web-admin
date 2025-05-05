// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../page_permission_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PagePermissionEntity {
  String get page;
  bool get isVisible;
  dynamic get canCreate;
  dynamic get canUpdate;
  dynamic get canDelete;

  /// Create a copy of PagePermissionEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PagePermissionEntityCopyWith<PagePermissionEntity> get copyWith =>
      _$PagePermissionEntityCopyWithImpl<PagePermissionEntity>(
          this as PagePermissionEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PagePermissionEntity &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.isVisible, isVisible) ||
                other.isVisible == isVisible) &&
            const DeepCollectionEquality().equals(other.canCreate, canCreate) &&
            const DeepCollectionEquality().equals(other.canUpdate, canUpdate) &&
            const DeepCollectionEquality().equals(other.canDelete, canDelete));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      page,
      isVisible,
      const DeepCollectionEquality().hash(canCreate),
      const DeepCollectionEquality().hash(canUpdate),
      const DeepCollectionEquality().hash(canDelete));

  @override
  String toString() {
    return 'PagePermissionEntity(page: $page, isVisible: $isVisible, canCreate: $canCreate, canUpdate: $canUpdate, canDelete: $canDelete)';
  }
}

/// @nodoc
abstract mixin class $PagePermissionEntityCopyWith<$Res> {
  factory $PagePermissionEntityCopyWith(PagePermissionEntity value,
          $Res Function(PagePermissionEntity) _then) =
      _$PagePermissionEntityCopyWithImpl;
  @useResult
  $Res call(
      {String page,
      bool isVisible,
      dynamic canCreate,
      dynamic canUpdate,
      dynamic canDelete});
}

/// @nodoc
class _$PagePermissionEntityCopyWithImpl<$Res>
    implements $PagePermissionEntityCopyWith<$Res> {
  _$PagePermissionEntityCopyWithImpl(this._self, this._then);

  final PagePermissionEntity _self;
  final $Res Function(PagePermissionEntity) _then;

  /// Create a copy of PagePermissionEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? isVisible = null,
    Object? canCreate = freezed,
    Object? canUpdate = freezed,
    Object? canDelete = freezed,
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
      canCreate: freezed == canCreate
          ? _self.canCreate
          : canCreate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      canUpdate: freezed == canUpdate
          ? _self.canUpdate
          : canUpdate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      canDelete: freezed == canDelete
          ? _self.canDelete
          : canDelete // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _PagePermissionEntity implements PagePermissionEntity {
  const _PagePermissionEntity(
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
  final dynamic canCreate;
  @override
  @JsonKey()
  final dynamic canUpdate;
  @override
  @JsonKey()
  final dynamic canDelete;

  /// Create a copy of PagePermissionEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PagePermissionEntityCopyWith<_PagePermissionEntity> get copyWith =>
      __$PagePermissionEntityCopyWithImpl<_PagePermissionEntity>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PagePermissionEntity &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.isVisible, isVisible) ||
                other.isVisible == isVisible) &&
            const DeepCollectionEquality().equals(other.canCreate, canCreate) &&
            const DeepCollectionEquality().equals(other.canUpdate, canUpdate) &&
            const DeepCollectionEquality().equals(other.canDelete, canDelete));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      page,
      isVisible,
      const DeepCollectionEquality().hash(canCreate),
      const DeepCollectionEquality().hash(canUpdate),
      const DeepCollectionEquality().hash(canDelete));

  @override
  String toString() {
    return 'PagePermissionEntity(page: $page, isVisible: $isVisible, canCreate: $canCreate, canUpdate: $canUpdate, canDelete: $canDelete)';
  }
}

/// @nodoc
abstract mixin class _$PagePermissionEntityCopyWith<$Res>
    implements $PagePermissionEntityCopyWith<$Res> {
  factory _$PagePermissionEntityCopyWith(_PagePermissionEntity value,
          $Res Function(_PagePermissionEntity) _then) =
      __$PagePermissionEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String page,
      bool isVisible,
      dynamic canCreate,
      dynamic canUpdate,
      dynamic canDelete});
}

/// @nodoc
class __$PagePermissionEntityCopyWithImpl<$Res>
    implements _$PagePermissionEntityCopyWith<$Res> {
  __$PagePermissionEntityCopyWithImpl(this._self, this._then);

  final _PagePermissionEntity _self;
  final $Res Function(_PagePermissionEntity) _then;

  /// Create a copy of PagePermissionEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? page = null,
    Object? isVisible = null,
    Object? canCreate = freezed,
    Object? canUpdate = freezed,
    Object? canDelete = freezed,
  }) {
    return _then(_PagePermissionEntity(
      page: null == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as String,
      isVisible: null == isVisible
          ? _self.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      canCreate: freezed == canCreate
          ? _self.canCreate
          : canCreate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      canUpdate: freezed == canUpdate
          ? _self.canUpdate
          : canUpdate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      canDelete: freezed == canDelete
          ? _self.canDelete
          : canDelete // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

// dart format on
