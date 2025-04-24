// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../get_profile_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RemoteGetProfileBody {
  String get email;

  /// Create a copy of RemoteGetProfileBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RemoteGetProfileBodyCopyWith<RemoteGetProfileBody> get copyWith =>
      _$RemoteGetProfileBodyCopyWithImpl<RemoteGetProfileBody>(
          this as RemoteGetProfileBody, _$identity);

  /// Serializes this RemoteGetProfileBody to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RemoteGetProfileBody &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email);

  @override
  String toString() {
    return 'RemoteGetProfileBody(email: $email)';
  }
}

/// @nodoc
abstract mixin class $RemoteGetProfileBodyCopyWith<$Res> {
  factory $RemoteGetProfileBodyCopyWith(RemoteGetProfileBody value,
          $Res Function(RemoteGetProfileBody) _then) =
      _$RemoteGetProfileBodyCopyWithImpl;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$RemoteGetProfileBodyCopyWithImpl<$Res>
    implements $RemoteGetProfileBodyCopyWith<$Res> {
  _$RemoteGetProfileBodyCopyWithImpl(this._self, this._then);

  final RemoteGetProfileBody _self;
  final $Res Function(RemoteGetProfileBody) _then;

  /// Create a copy of RemoteGetProfileBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_self.copyWith(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _RemoteGetProfileBody implements RemoteGetProfileBody {
  const _RemoteGetProfileBody({required this.email});
  factory _RemoteGetProfileBody.fromJson(Map<String, dynamic> json) =>
      _$RemoteGetProfileBodyFromJson(json);

  @override
  final String email;

  /// Create a copy of RemoteGetProfileBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RemoteGetProfileBodyCopyWith<_RemoteGetProfileBody> get copyWith =>
      __$RemoteGetProfileBodyCopyWithImpl<_RemoteGetProfileBody>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RemoteGetProfileBodyToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemoteGetProfileBody &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email);

  @override
  String toString() {
    return 'RemoteGetProfileBody(email: $email)';
  }
}

/// @nodoc
abstract mixin class _$RemoteGetProfileBodyCopyWith<$Res>
    implements $RemoteGetProfileBodyCopyWith<$Res> {
  factory _$RemoteGetProfileBodyCopyWith(_RemoteGetProfileBody value,
          $Res Function(_RemoteGetProfileBody) _then) =
      __$RemoteGetProfileBodyCopyWithImpl;
  @override
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$RemoteGetProfileBodyCopyWithImpl<$Res>
    implements _$RemoteGetProfileBodyCopyWith<$Res> {
  __$RemoteGetProfileBodyCopyWithImpl(this._self, this._then);

  final _RemoteGetProfileBody _self;
  final $Res Function(_RemoteGetProfileBody) _then;

  /// Create a copy of RemoteGetProfileBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
  }) {
    return _then(_RemoteGetProfileBody(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
