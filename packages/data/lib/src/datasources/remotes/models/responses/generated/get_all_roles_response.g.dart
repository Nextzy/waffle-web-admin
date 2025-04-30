// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../get_all_roles_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RemoteGetAllRolesResponse _$RemoteGetAllRolesResponseFromJson(
        Map<String, dynamic> json) =>
    _RemoteGetAllRolesResponse(
      roles: (json['roles'] as List<dynamic>?)
          ?.map((e) => RemoteRole.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RemoteGetAllRolesResponseToJson(
        _RemoteGetAllRolesResponse instance) =>
    <String, dynamic>{
      'roles': instance.roles,
    };

_RemoteRole _$RemoteRoleFromJson(Map<String, dynamic> json) => _RemoteRole(
      roleId: json['roleId'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$RemoteRoleToJson(_RemoteRole instance) =>
    <String, dynamic>{
      'roleId': instance.roleId,
      'name': instance.name,
    };
