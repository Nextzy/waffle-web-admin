// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../get_profile_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RemoteGetProfileResponse _$RemoteGetProfileResponseFromJson(
        Map<String, dynamic> json) =>
    _RemoteGetProfileResponse(
      userId: json['userId'] as String?,
      username: json['username'] as String?,
    );

Map<String, dynamic> _$RemoteGetProfileResponseToJson(
        _RemoteGetProfileResponse instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'username': instance.username,
    };
