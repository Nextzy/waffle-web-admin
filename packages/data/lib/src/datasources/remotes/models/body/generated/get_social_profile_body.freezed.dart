// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../get_social_profile_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RemoteGetSocialProfileBody {
  String get accessToken;
  String get social;

  /// Create a copy of RemoteGetSocialProfileBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RemoteGetSocialProfileBodyCopyWith<RemoteGetSocialProfileBody>
      get copyWith =>
          _$RemoteGetSocialProfileBodyCopyWithImpl<RemoteGetSocialProfileBody>(
              this as RemoteGetSocialProfileBody, _$identity);

  /// Serializes this RemoteGetSocialProfileBody to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RemoteGetSocialProfileBody &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.social, social) || other.social == social));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, social);

  @override
  String toString() {
    return 'RemoteGetSocialProfileBody(accessToken: $accessToken, social: $social)';
  }
}

/// @nodoc
abstract mixin class $RemoteGetSocialProfileBodyCopyWith<$Res> {
  factory $RemoteGetSocialProfileBodyCopyWith(RemoteGetSocialProfileBody value,
          $Res Function(RemoteGetSocialProfileBody) _then) =
      _$RemoteGetSocialProfileBodyCopyWithImpl;
  @useResult
  $Res call({String accessToken, String social});
}

/// @nodoc
class _$RemoteGetSocialProfileBodyCopyWithImpl<$Res>
    implements $RemoteGetSocialProfileBodyCopyWith<$Res> {
  _$RemoteGetSocialProfileBodyCopyWithImpl(this._self, this._then);

  final RemoteGetSocialProfileBody _self;
  final $Res Function(RemoteGetSocialProfileBody) _then;

  /// Create a copy of RemoteGetSocialProfileBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? social = null,
  }) {
    return _then(_self.copyWith(
      accessToken: null == accessToken
          ? _self.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      social: null == social
          ? _self.social
          : social // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _RemoteGetSocialProfileBody implements RemoteGetSocialProfileBody {
  const _RemoteGetSocialProfileBody(
      {required this.accessToken, required this.social});
  factory _RemoteGetSocialProfileBody.fromJson(Map<String, dynamic> json) =>
      _$RemoteGetSocialProfileBodyFromJson(json);

  @override
  final String accessToken;
  @override
  final String social;

  /// Create a copy of RemoteGetSocialProfileBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RemoteGetSocialProfileBodyCopyWith<_RemoteGetSocialProfileBody>
      get copyWith => __$RemoteGetSocialProfileBodyCopyWithImpl<
          _RemoteGetSocialProfileBody>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RemoteGetSocialProfileBodyToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemoteGetSocialProfileBody &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.social, social) || other.social == social));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, social);

  @override
  String toString() {
    return 'RemoteGetSocialProfileBody(accessToken: $accessToken, social: $social)';
  }
}

/// @nodoc
abstract mixin class _$RemoteGetSocialProfileBodyCopyWith<$Res>
    implements $RemoteGetSocialProfileBodyCopyWith<$Res> {
  factory _$RemoteGetSocialProfileBodyCopyWith(
          _RemoteGetSocialProfileBody value,
          $Res Function(_RemoteGetSocialProfileBody) _then) =
      __$RemoteGetSocialProfileBodyCopyWithImpl;
  @override
  @useResult
  $Res call({String accessToken, String social});
}

/// @nodoc
class __$RemoteGetSocialProfileBodyCopyWithImpl<$Res>
    implements _$RemoteGetSocialProfileBodyCopyWith<$Res> {
  __$RemoteGetSocialProfileBodyCopyWithImpl(this._self, this._then);

  final _RemoteGetSocialProfileBody _self;
  final $Res Function(_RemoteGetSocialProfileBody) _then;

  /// Create a copy of RemoteGetSocialProfileBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? accessToken = null,
    Object? social = null,
  }) {
    return _then(_RemoteGetSocialProfileBody(
      accessToken: null == accessToken
          ? _self.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      social: null == social
          ? _self.social
          : social // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
