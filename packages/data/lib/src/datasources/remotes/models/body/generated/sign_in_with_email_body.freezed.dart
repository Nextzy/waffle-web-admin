// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../sign_in_with_email_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RemoteSignInWithEmailBody {
  String? get email;
  String? get password;

  /// Create a copy of RemoteSignInWithEmailBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RemoteSignInWithEmailBodyCopyWith<RemoteSignInWithEmailBody> get copyWith =>
      _$RemoteSignInWithEmailBodyCopyWithImpl<RemoteSignInWithEmailBody>(
          this as RemoteSignInWithEmailBody, _$identity);

  /// Serializes this RemoteSignInWithEmailBody to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RemoteSignInWithEmailBody &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @override
  String toString() {
    return 'RemoteSignInWithEmailBody(email: $email, password: $password)';
  }
}

/// @nodoc
abstract mixin class $RemoteSignInWithEmailBodyCopyWith<$Res> {
  factory $RemoteSignInWithEmailBodyCopyWith(RemoteSignInWithEmailBody value,
          $Res Function(RemoteSignInWithEmailBody) _then) =
      _$RemoteSignInWithEmailBodyCopyWithImpl;
  @useResult
  $Res call({String? email, String? password});
}

/// @nodoc
class _$RemoteSignInWithEmailBodyCopyWithImpl<$Res>
    implements $RemoteSignInWithEmailBodyCopyWith<$Res> {
  _$RemoteSignInWithEmailBodyCopyWithImpl(this._self, this._then);

  final RemoteSignInWithEmailBody _self;
  final $Res Function(RemoteSignInWithEmailBody) _then;

  /// Create a copy of RemoteSignInWithEmailBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_self.copyWith(
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
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
class _RemoteSignInWithEmailBody implements RemoteSignInWithEmailBody {
  const _RemoteSignInWithEmailBody(
      {required this.email, required this.password});
  factory _RemoteSignInWithEmailBody.fromJson(Map<String, dynamic> json) =>
      _$RemoteSignInWithEmailBodyFromJson(json);

  @override
  final String? email;
  @override
  final String? password;

  /// Create a copy of RemoteSignInWithEmailBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RemoteSignInWithEmailBodyCopyWith<_RemoteSignInWithEmailBody>
      get copyWith =>
          __$RemoteSignInWithEmailBodyCopyWithImpl<_RemoteSignInWithEmailBody>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RemoteSignInWithEmailBodyToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemoteSignInWithEmailBody &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @override
  String toString() {
    return 'RemoteSignInWithEmailBody(email: $email, password: $password)';
  }
}

/// @nodoc
abstract mixin class _$RemoteSignInWithEmailBodyCopyWith<$Res>
    implements $RemoteSignInWithEmailBodyCopyWith<$Res> {
  factory _$RemoteSignInWithEmailBodyCopyWith(_RemoteSignInWithEmailBody value,
          $Res Function(_RemoteSignInWithEmailBody) _then) =
      __$RemoteSignInWithEmailBodyCopyWithImpl;
  @override
  @useResult
  $Res call({String? email, String? password});
}

/// @nodoc
class __$RemoteSignInWithEmailBodyCopyWithImpl<$Res>
    implements _$RemoteSignInWithEmailBodyCopyWith<$Res> {
  __$RemoteSignInWithEmailBodyCopyWithImpl(this._self, this._then);

  final _RemoteSignInWithEmailBody _self;
  final $Res Function(_RemoteSignInWithEmailBody) _then;

  /// Create a copy of RemoteSignInWithEmailBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_RemoteSignInWithEmailBody(
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
