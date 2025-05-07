// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../permission_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RemotePermissionResponse {
  bool get visible;
  bool get create;
  bool get update;
  bool get delete;

  /// Create a copy of RemotePermissionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RemotePermissionResponseCopyWith<RemotePermissionResponse> get copyWith =>
      _$RemotePermissionResponseCopyWithImpl<RemotePermissionResponse>(
          this as RemotePermissionResponse, _$identity);

  /// Serializes this RemotePermissionResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RemotePermissionResponse &&
            (identical(other.visible, visible) || other.visible == visible) &&
            (identical(other.create, create) || other.create == create) &&
            (identical(other.update, update) || other.update == update) &&
            (identical(other.delete, delete) || other.delete == delete));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, visible, create, update, delete);

  @override
  String toString() {
    return 'RemotePermissionResponse(visible: $visible, create: $create, update: $update, delete: $delete)';
  }
}

/// @nodoc
abstract mixin class $RemotePermissionResponseCopyWith<$Res> {
  factory $RemotePermissionResponseCopyWith(RemotePermissionResponse value,
          $Res Function(RemotePermissionResponse) _then) =
      _$RemotePermissionResponseCopyWithImpl;
  @useResult
  $Res call({bool visible, bool create, bool update, bool delete});
}

/// @nodoc
class _$RemotePermissionResponseCopyWithImpl<$Res>
    implements $RemotePermissionResponseCopyWith<$Res> {
  _$RemotePermissionResponseCopyWithImpl(this._self, this._then);

  final RemotePermissionResponse _self;
  final $Res Function(RemotePermissionResponse) _then;

  /// Create a copy of RemotePermissionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visible = null,
    Object? create = null,
    Object? update = null,
    Object? delete = null,
  }) {
    return _then(_self.copyWith(
      visible: null == visible
          ? _self.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool,
      create: null == create
          ? _self.create
          : create // ignore: cast_nullable_to_non_nullable
              as bool,
      update: null == update
          ? _self.update
          : update // ignore: cast_nullable_to_non_nullable
              as bool,
      delete: null == delete
          ? _self.delete
          : delete // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _RemotePermissionResponse implements RemotePermissionResponse {
  const _RemotePermissionResponse(
      {required this.visible,
      required this.create,
      required this.update,
      required this.delete});
  factory _RemotePermissionResponse.fromJson(Map<String, dynamic> json) =>
      _$RemotePermissionResponseFromJson(json);

  @override
  final bool visible;
  @override
  final bool create;
  @override
  final bool update;
  @override
  final bool delete;

  /// Create a copy of RemotePermissionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RemotePermissionResponseCopyWith<_RemotePermissionResponse> get copyWith =>
      __$RemotePermissionResponseCopyWithImpl<_RemotePermissionResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RemotePermissionResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemotePermissionResponse &&
            (identical(other.visible, visible) || other.visible == visible) &&
            (identical(other.create, create) || other.create == create) &&
            (identical(other.update, update) || other.update == update) &&
            (identical(other.delete, delete) || other.delete == delete));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, visible, create, update, delete);

  @override
  String toString() {
    return 'RemotePermissionResponse(visible: $visible, create: $create, update: $update, delete: $delete)';
  }
}

/// @nodoc
abstract mixin class _$RemotePermissionResponseCopyWith<$Res>
    implements $RemotePermissionResponseCopyWith<$Res> {
  factory _$RemotePermissionResponseCopyWith(_RemotePermissionResponse value,
          $Res Function(_RemotePermissionResponse) _then) =
      __$RemotePermissionResponseCopyWithImpl;
  @override
  @useResult
  $Res call({bool visible, bool create, bool update, bool delete});
}

/// @nodoc
class __$RemotePermissionResponseCopyWithImpl<$Res>
    implements _$RemotePermissionResponseCopyWith<$Res> {
  __$RemotePermissionResponseCopyWithImpl(this._self, this._then);

  final _RemotePermissionResponse _self;
  final $Res Function(_RemotePermissionResponse) _then;

  /// Create a copy of RemotePermissionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? visible = null,
    Object? create = null,
    Object? update = null,
    Object? delete = null,
  }) {
    return _then(_RemotePermissionResponse(
      visible: null == visible
          ? _self.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool,
      create: null == create
          ? _self.create
          : create // ignore: cast_nullable_to_non_nullable
              as bool,
      update: null == update
          ? _self.update
          : update // ignore: cast_nullable_to_non_nullable
              as bool,
      delete: null == delete
          ? _self.delete
          : delete // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
