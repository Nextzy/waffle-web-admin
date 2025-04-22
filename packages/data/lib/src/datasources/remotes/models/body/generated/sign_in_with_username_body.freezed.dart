// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../sign_in_with_username_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RemoteSignInWithUsernameBody {
  String? get username;
  String? get password;

  /// Create a copy of RemoteSignInWithUsernameBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RemoteSignInWithUsernameBodyCopyWith<RemoteSignInWithUsernameBody>
      get copyWith => _$RemoteSignInWithUsernameBodyCopyWithImpl<
              RemoteSignInWithUsernameBody>(
          this as RemoteSignInWithUsernameBody, _$identity);

  /// Serializes this RemoteSignInWithUsernameBody to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RemoteSignInWithUsernameBody &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  @override
  String toString() {
    return 'RemoteSignInWithUsernameBody(username: $username, password: $password)';
  }
}

/// @nodoc
abstract mixin class $RemoteSignInWithUsernameBodyCopyWith<$Res> {
  factory $RemoteSignInWithUsernameBodyCopyWith(
          RemoteSignInWithUsernameBody value,
          $Res Function(RemoteSignInWithUsernameBody) _then) =
      _$RemoteSignInWithUsernameBodyCopyWithImpl;
  @useResult
  $Res call({String? username, String? password});
}

/// @nodoc
class _$RemoteSignInWithUsernameBodyCopyWithImpl<$Res>
    implements $RemoteSignInWithUsernameBodyCopyWith<$Res> {
  _$RemoteSignInWithUsernameBodyCopyWithImpl(this._self, this._then);

  final RemoteSignInWithUsernameBody _self;
  final $Res Function(RemoteSignInWithUsernameBody) _then;

  /// Create a copy of RemoteSignInWithUsernameBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
  }) {
    return _then(_self.copyWith(
      username: freezed == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _RemoteSignInWithUsernameBody implements RemoteSignInWithUsernameBody {
  const _RemoteSignInWithUsernameBody(
      {required this.username, required this.password});
  factory _RemoteSignInWithUsernameBody.fromJson(Map<String, dynamic> json) =>
      _$RemoteSignInWithUsernameBodyFromJson(json);

  @override
  final String? username;
  @override
  final String? password;

  /// Create a copy of RemoteSignInWithUsernameBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RemoteSignInWithUsernameBodyCopyWith<_RemoteSignInWithUsernameBody>
      get copyWith => __$RemoteSignInWithUsernameBodyCopyWithImpl<
          _RemoteSignInWithUsernameBody>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RemoteSignInWithUsernameBodyToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemoteSignInWithUsernameBody &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  @override
  String toString() {
    return 'RemoteSignInWithUsernameBody(username: $username, password: $password)';
  }
}

/// @nodoc
abstract mixin class _$RemoteSignInWithUsernameBodyCopyWith<$Res>
    implements $RemoteSignInWithUsernameBodyCopyWith<$Res> {
  factory _$RemoteSignInWithUsernameBodyCopyWith(
          _RemoteSignInWithUsernameBody value,
          $Res Function(_RemoteSignInWithUsernameBody) _then) =
      __$RemoteSignInWithUsernameBodyCopyWithImpl;
  @override
  @useResult
  $Res call({String? username, String? password});
}

/// @nodoc
class __$RemoteSignInWithUsernameBodyCopyWithImpl<$Res>
    implements _$RemoteSignInWithUsernameBodyCopyWith<$Res> {
  __$RemoteSignInWithUsernameBodyCopyWithImpl(this._self, this._then);

  final _RemoteSignInWithUsernameBody _self;
  final $Res Function(_RemoteSignInWithUsernameBody) _then;

  /// Create a copy of RemoteSignInWithUsernameBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
  }) {
    return _then(_RemoteSignInWithUsernameBody(
      username: freezed == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
