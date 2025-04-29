// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../update_profile_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RemoteUpdateProfileBody {
  String get email;
  String get firstName;
  String get lastName;
  String get phone;

  /// Create a copy of RemoteUpdateProfileBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RemoteUpdateProfileBodyCopyWith<RemoteUpdateProfileBody> get copyWith =>
      _$RemoteUpdateProfileBodyCopyWithImpl<RemoteUpdateProfileBody>(
          this as RemoteUpdateProfileBody, _$identity);

  /// Serializes this RemoteUpdateProfileBody to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RemoteUpdateProfileBody &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, email, firstName, lastName, phone);

  @override
  String toString() {
    return 'RemoteUpdateProfileBody(email: $email, firstName: $firstName, lastName: $lastName, phone: $phone)';
  }
}

/// @nodoc
abstract mixin class $RemoteUpdateProfileBodyCopyWith<$Res> {
  factory $RemoteUpdateProfileBodyCopyWith(RemoteUpdateProfileBody value,
          $Res Function(RemoteUpdateProfileBody) _then) =
      _$RemoteUpdateProfileBodyCopyWithImpl;
  @useResult
  $Res call({String email, String firstName, String lastName, String phone});
}

/// @nodoc
class _$RemoteUpdateProfileBodyCopyWithImpl<$Res>
    implements $RemoteUpdateProfileBodyCopyWith<$Res> {
  _$RemoteUpdateProfileBodyCopyWithImpl(this._self, this._then);

  final RemoteUpdateProfileBody _self;
  final $Res Function(RemoteUpdateProfileBody) _then;

  /// Create a copy of RemoteUpdateProfileBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? phone = null,
  }) {
    return _then(_self.copyWith(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _RemoteUpdateProfileBody implements RemoteUpdateProfileBody {
  const _RemoteUpdateProfileBody(
      {required this.email,
      required this.firstName,
      required this.lastName,
      required this.phone});
  factory _RemoteUpdateProfileBody.fromJson(Map<String, dynamic> json) =>
      _$RemoteUpdateProfileBodyFromJson(json);

  @override
  final String email;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String phone;

  /// Create a copy of RemoteUpdateProfileBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RemoteUpdateProfileBodyCopyWith<_RemoteUpdateProfileBody> get copyWith =>
      __$RemoteUpdateProfileBodyCopyWithImpl<_RemoteUpdateProfileBody>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RemoteUpdateProfileBodyToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemoteUpdateProfileBody &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, email, firstName, lastName, phone);

  @override
  String toString() {
    return 'RemoteUpdateProfileBody(email: $email, firstName: $firstName, lastName: $lastName, phone: $phone)';
  }
}

/// @nodoc
abstract mixin class _$RemoteUpdateProfileBodyCopyWith<$Res>
    implements $RemoteUpdateProfileBodyCopyWith<$Res> {
  factory _$RemoteUpdateProfileBodyCopyWith(_RemoteUpdateProfileBody value,
          $Res Function(_RemoteUpdateProfileBody) _then) =
      __$RemoteUpdateProfileBodyCopyWithImpl;
  @override
  @useResult
  $Res call({String email, String firstName, String lastName, String phone});
}

/// @nodoc
class __$RemoteUpdateProfileBodyCopyWithImpl<$Res>
    implements _$RemoteUpdateProfileBodyCopyWith<$Res> {
  __$RemoteUpdateProfileBodyCopyWithImpl(this._self, this._then);

  final _RemoteUpdateProfileBody _self;
  final $Res Function(_RemoteUpdateProfileBody) _then;

  /// Create a copy of RemoteUpdateProfileBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? phone = null,
  }) {
    return _then(_RemoteUpdateProfileBody(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
