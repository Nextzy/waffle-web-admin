// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../reset_password_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RemoteResetPasswordBody {
  String get email;
  String get oldPassword;
  String get newPassword;

  /// Create a copy of RemoteResetPasswordBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RemoteResetPasswordBodyCopyWith<RemoteResetPasswordBody> get copyWith =>
      _$RemoteResetPasswordBodyCopyWithImpl<RemoteResetPasswordBody>(
          this as RemoteResetPasswordBody, _$identity);

  /// Serializes this RemoteResetPasswordBody to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RemoteResetPasswordBody &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.oldPassword, oldPassword) ||
                other.oldPassword == oldPassword) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, oldPassword, newPassword);

  @override
  String toString() {
    return 'RemoteResetPasswordBody(email: $email, oldPassword: $oldPassword, newPassword: $newPassword)';
  }
}

/// @nodoc
abstract mixin class $RemoteResetPasswordBodyCopyWith<$Res> {
  factory $RemoteResetPasswordBodyCopyWith(RemoteResetPasswordBody value,
          $Res Function(RemoteResetPasswordBody) _then) =
      _$RemoteResetPasswordBodyCopyWithImpl;
  @useResult
  $Res call({String email, String oldPassword, String newPassword});
}

/// @nodoc
class _$RemoteResetPasswordBodyCopyWithImpl<$Res>
    implements $RemoteResetPasswordBodyCopyWith<$Res> {
  _$RemoteResetPasswordBodyCopyWithImpl(this._self, this._then);

  final RemoteResetPasswordBody _self;
  final $Res Function(RemoteResetPasswordBody) _then;

  /// Create a copy of RemoteResetPasswordBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? oldPassword = null,
    Object? newPassword = null,
  }) {
    return _then(_self.copyWith(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      oldPassword: null == oldPassword
          ? _self.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _self.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _RemoteResetPasswordBody implements RemoteResetPasswordBody {
  const _RemoteResetPasswordBody(
      {required this.email,
      required this.oldPassword,
      required this.newPassword});
  factory _RemoteResetPasswordBody.fromJson(Map<String, dynamic> json) =>
      _$RemoteResetPasswordBodyFromJson(json);

  @override
  final String email;
  @override
  final String oldPassword;
  @override
  final String newPassword;

  /// Create a copy of RemoteResetPasswordBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RemoteResetPasswordBodyCopyWith<_RemoteResetPasswordBody> get copyWith =>
      __$RemoteResetPasswordBodyCopyWithImpl<_RemoteResetPasswordBody>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RemoteResetPasswordBodyToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemoteResetPasswordBody &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.oldPassword, oldPassword) ||
                other.oldPassword == oldPassword) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, oldPassword, newPassword);

  @override
  String toString() {
    return 'RemoteResetPasswordBody(email: $email, oldPassword: $oldPassword, newPassword: $newPassword)';
  }
}

/// @nodoc
abstract mixin class _$RemoteResetPasswordBodyCopyWith<$Res>
    implements $RemoteResetPasswordBodyCopyWith<$Res> {
  factory _$RemoteResetPasswordBodyCopyWith(_RemoteResetPasswordBody value,
          $Res Function(_RemoteResetPasswordBody) _then) =
      __$RemoteResetPasswordBodyCopyWithImpl;
  @override
  @useResult
  $Res call({String email, String oldPassword, String newPassword});
}

/// @nodoc
class __$RemoteResetPasswordBodyCopyWithImpl<$Res>
    implements _$RemoteResetPasswordBodyCopyWith<$Res> {
  __$RemoteResetPasswordBodyCopyWithImpl(this._self, this._then);

  final _RemoteResetPasswordBody _self;
  final $Res Function(_RemoteResetPasswordBody) _then;

  /// Create a copy of RemoteResetPasswordBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
    Object? oldPassword = null,
    Object? newPassword = null,
  }) {
    return _then(_RemoteResetPasswordBody(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      oldPassword: null == oldPassword
          ? _self.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _self.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
