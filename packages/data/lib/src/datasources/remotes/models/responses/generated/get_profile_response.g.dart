// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../get_profile_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RemoteGetProfileResponse _$RemoteGetProfileResponseFromJson(
        Map<String, dynamic> json) =>
    _RemoteGetProfileResponse(
      user: json['user'] == null
          ? null
          : RemoteUser.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RemoteGetProfileResponseToJson(
        _RemoteGetProfileResponse instance) =>
    <String, dynamic>{
      'user': instance.user,
    };

_RemoteUser _$RemoteUserFromJson(Map<String, dynamic> json) => _RemoteUser(
      userId: json['userId'] as String?,
      email: json['email'] as String?,
      role: json['role'] as String?,
      username: json['username'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      phone: json['phone'] as String?,
      photoUrl: json['photoUrl'] as String?,
    );

Map<String, dynamic> _$RemoteUserToJson(_RemoteUser instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'email': instance.email,
      'role': instance.role,
      'username': instance.username,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'phone': instance.phone,
      'photoUrl': instance.photoUrl,
    };
