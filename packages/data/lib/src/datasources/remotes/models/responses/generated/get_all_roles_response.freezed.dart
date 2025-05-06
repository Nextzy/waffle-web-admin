// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../get_all_roles_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RemoteGetAllRolesResponse {
  List<RemoteRole>? get roles;

  /// Create a copy of RemoteGetAllRolesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RemoteGetAllRolesResponseCopyWith<RemoteGetAllRolesResponse> get copyWith =>
      _$RemoteGetAllRolesResponseCopyWithImpl<RemoteGetAllRolesResponse>(
          this as RemoteGetAllRolesResponse, _$identity);

  /// Serializes this RemoteGetAllRolesResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RemoteGetAllRolesResponse &&
            const DeepCollectionEquality().equals(other.roles, roles));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(roles));

  @override
  String toString() {
    return 'RemoteGetAllRolesResponse(roles: $roles)';
  }
}

/// @nodoc
abstract mixin class $RemoteGetAllRolesResponseCopyWith<$Res> {
  factory $RemoteGetAllRolesResponseCopyWith(RemoteGetAllRolesResponse value,
          $Res Function(RemoteGetAllRolesResponse) _then) =
      _$RemoteGetAllRolesResponseCopyWithImpl;
  @useResult
  $Res call({List<RemoteRole>? roles});
}

/// @nodoc
class _$RemoteGetAllRolesResponseCopyWithImpl<$Res>
    implements $RemoteGetAllRolesResponseCopyWith<$Res> {
  _$RemoteGetAllRolesResponseCopyWithImpl(this._self, this._then);

  final RemoteGetAllRolesResponse _self;
  final $Res Function(RemoteGetAllRolesResponse) _then;

  /// Create a copy of RemoteGetAllRolesResponse
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
              as List<RemoteRole>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _RemoteGetAllRolesResponse implements RemoteGetAllRolesResponse {
  const _RemoteGetAllRolesResponse({final List<RemoteRole>? roles})
      : _roles = roles;
  factory _RemoteGetAllRolesResponse.fromJson(Map<String, dynamic> json) =>
      _$RemoteGetAllRolesResponseFromJson(json);

  final List<RemoteRole>? _roles;
  @override
  List<RemoteRole>? get roles {
    final value = _roles;
    if (value == null) return null;
    if (_roles is EqualUnmodifiableListView) return _roles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of RemoteGetAllRolesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RemoteGetAllRolesResponseCopyWith<_RemoteGetAllRolesResponse>
      get copyWith =>
          __$RemoteGetAllRolesResponseCopyWithImpl<_RemoteGetAllRolesResponse>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RemoteGetAllRolesResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemoteGetAllRolesResponse &&
            const DeepCollectionEquality().equals(other._roles, _roles));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_roles));

  @override
  String toString() {
    return 'RemoteGetAllRolesResponse(roles: $roles)';
  }
}

/// @nodoc
abstract mixin class _$RemoteGetAllRolesResponseCopyWith<$Res>
    implements $RemoteGetAllRolesResponseCopyWith<$Res> {
  factory _$RemoteGetAllRolesResponseCopyWith(_RemoteGetAllRolesResponse value,
          $Res Function(_RemoteGetAllRolesResponse) _then) =
      __$RemoteGetAllRolesResponseCopyWithImpl;
  @override
  @useResult
  $Res call({List<RemoteRole>? roles});
}

/// @nodoc
class __$RemoteGetAllRolesResponseCopyWithImpl<$Res>
    implements _$RemoteGetAllRolesResponseCopyWith<$Res> {
  __$RemoteGetAllRolesResponseCopyWithImpl(this._self, this._then);

  final _RemoteGetAllRolesResponse _self;
  final $Res Function(_RemoteGetAllRolesResponse) _then;

  /// Create a copy of RemoteGetAllRolesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? roles = freezed,
  }) {
    return _then(_RemoteGetAllRolesResponse(
      roles: freezed == roles
          ? _self._roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<RemoteRole>?,
    ));
  }
}

// dart format on
