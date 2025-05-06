// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../get_role_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RemoteGetRoleResponse _$RemoteGetRoleResponseFromJson(
        Map<String, dynamic> json) =>
    _RemoteGetRoleResponse(
      role: json['role'] == null
          ? null
          : RemoteRole.fromJson(json['role'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RemoteGetRoleResponseToJson(
        _RemoteGetRoleResponse instance) =>
    <String, dynamic>{
      'role': instance.role,
    };
