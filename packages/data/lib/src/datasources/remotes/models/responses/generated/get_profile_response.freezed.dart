// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../get_profile_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RemoteGetProfileResponse {
  RemoteUser? get user;

  /// Create a copy of RemoteGetProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RemoteGetProfileResponseCopyWith<RemoteGetProfileResponse> get copyWith =>
      _$RemoteGetProfileResponseCopyWithImpl<RemoteGetProfileResponse>(
          this as RemoteGetProfileResponse, _$identity);

  /// Serializes this RemoteGetProfileResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RemoteGetProfileResponse &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, user);

  @override
  String toString() {
    return 'RemoteGetProfileResponse(user: $user)';
  }
}

/// @nodoc
abstract mixin class $RemoteGetProfileResponseCopyWith<$Res> {
  factory $RemoteGetProfileResponseCopyWith(RemoteGetProfileResponse value,
          $Res Function(RemoteGetProfileResponse) _then) =
      _$RemoteGetProfileResponseCopyWithImpl;
  @useResult
  $Res call({RemoteUser? user});

  $RemoteUserCopyWith<$Res>? get user;
}

/// @nodoc
class _$RemoteGetProfileResponseCopyWithImpl<$Res>
    implements $RemoteGetProfileResponseCopyWith<$Res> {
  _$RemoteGetProfileResponseCopyWithImpl(this._self, this._then);

  final RemoteGetProfileResponse _self;
  final $Res Function(RemoteGetProfileResponse) _then;

  /// Create a copy of RemoteGetProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_self.copyWith(
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as RemoteUser?,
    ));
  }

  /// Create a copy of RemoteGetProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RemoteUserCopyWith<$Res>? get user {
    if (_self.user == null) {
      return null;
    }

    return $RemoteUserCopyWith<$Res>(_self.user!, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _RemoteGetProfileResponse implements RemoteGetProfileResponse {
  const _RemoteGetProfileResponse({this.user});
  factory _RemoteGetProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$RemoteGetProfileResponseFromJson(json);

  @override
  final RemoteUser? user;

  /// Create a copy of RemoteGetProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RemoteGetProfileResponseCopyWith<_RemoteGetProfileResponse> get copyWith =>
      __$RemoteGetProfileResponseCopyWithImpl<_RemoteGetProfileResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RemoteGetProfileResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemoteGetProfileResponse &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, user);

  @override
  String toString() {
    return 'RemoteGetProfileResponse(user: $user)';
  }
}

/// @nodoc
abstract mixin class _$RemoteGetProfileResponseCopyWith<$Res>
    implements $RemoteGetProfileResponseCopyWith<$Res> {
  factory _$RemoteGetProfileResponseCopyWith(_RemoteGetProfileResponse value,
          $Res Function(_RemoteGetProfileResponse) _then) =
      __$RemoteGetProfileResponseCopyWithImpl;
  @override
  @useResult
  $Res call({RemoteUser? user});

  @override
  $RemoteUserCopyWith<$Res>? get user;
}

/// @nodoc
class __$RemoteGetProfileResponseCopyWithImpl<$Res>
    implements _$RemoteGetProfileResponseCopyWith<$Res> {
  __$RemoteGetProfileResponseCopyWithImpl(this._self, this._then);

  final _RemoteGetProfileResponse _self;
  final $Res Function(_RemoteGetProfileResponse) _then;

  /// Create a copy of RemoteGetProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_RemoteGetProfileResponse(
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as RemoteUser?,
    ));
  }

  /// Create a copy of RemoteGetProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RemoteUserCopyWith<$Res>? get user {
    if (_self.user == null) {
      return null;
    }

    return $RemoteUserCopyWith<$Res>(_self.user!, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

/// @nodoc
mixin _$RemoteUser {
  String? get userId;
  String? get email;
  String? get role;
  String? get username;
  String? get firstName;
  String? get lastName;
  String? get phone;
  String? get photoUrl;

  /// Create a copy of RemoteUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RemoteUserCopyWith<RemoteUser> get copyWith =>
      _$RemoteUserCopyWithImpl<RemoteUser>(this as RemoteUser, _$identity);

  /// Serializes this RemoteUser to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RemoteUser &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, email, role, username,
      firstName, lastName, phone, photoUrl);

  @override
  String toString() {
    return 'RemoteUser(userId: $userId, email: $email, role: $role, username: $username, firstName: $firstName, lastName: $lastName, phone: $phone, photoUrl: $photoUrl)';
  }
}

/// @nodoc
abstract mixin class $RemoteUserCopyWith<$Res> {
  factory $RemoteUserCopyWith(
          RemoteUser value, $Res Function(RemoteUser) _then) =
      _$RemoteUserCopyWithImpl;
  @useResult
  $Res call(
      {String? userId,
      String? email,
      String? role,
      String? username,
      String? firstName,
      String? lastName,
      String? phone,
      String? photoUrl});
}

/// @nodoc
class _$RemoteUserCopyWithImpl<$Res> implements $RemoteUserCopyWith<$Res> {
  _$RemoteUserCopyWithImpl(this._self, this._then);

  final RemoteUser _self;
  final $Res Function(RemoteUser) _then;

  /// Create a copy of RemoteUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? email = freezed,
    Object? role = freezed,
    Object? username = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? phone = freezed,
    Object? photoUrl = freezed,
  }) {
    return _then(_self.copyWith(
      userId: freezed == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _self.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _RemoteUser implements RemoteUser {
  const _RemoteUser(
      {this.userId,
      this.email,
      this.role,
      this.username,
      this.firstName,
      this.lastName,
      this.phone,
      this.photoUrl});
  factory _RemoteUser.fromJson(Map<String, dynamic> json) =>
      _$RemoteUserFromJson(json);

  @override
  final String? userId;
  @override
  final String? email;
  @override
  final String? role;
  @override
  final String? username;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? phone;
  @override
  final String? photoUrl;

  /// Create a copy of RemoteUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RemoteUserCopyWith<_RemoteUser> get copyWith =>
      __$RemoteUserCopyWithImpl<_RemoteUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RemoteUserToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemoteUser &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, email, role, username,
      firstName, lastName, phone, photoUrl);

  @override
  String toString() {
    return 'RemoteUser(userId: $userId, email: $email, role: $role, username: $username, firstName: $firstName, lastName: $lastName, phone: $phone, photoUrl: $photoUrl)';
  }
}

/// @nodoc
abstract mixin class _$RemoteUserCopyWith<$Res>
    implements $RemoteUserCopyWith<$Res> {
  factory _$RemoteUserCopyWith(
          _RemoteUser value, $Res Function(_RemoteUser) _then) =
      __$RemoteUserCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? userId,
      String? email,
      String? role,
      String? username,
      String? firstName,
      String? lastName,
      String? phone,
      String? photoUrl});
}

/// @nodoc
class __$RemoteUserCopyWithImpl<$Res> implements _$RemoteUserCopyWith<$Res> {
  __$RemoteUserCopyWithImpl(this._self, this._then);

  final _RemoteUser _self;
  final $Res Function(_RemoteUser) _then;

  /// Create a copy of RemoteUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? userId = freezed,
    Object? email = freezed,
    Object? role = freezed,
    Object? username = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? phone = freezed,
    Object? photoUrl = freezed,
  }) {
    return _then(_RemoteUser(
      userId: freezed == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _self.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
