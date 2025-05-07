// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../permission_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RemotePermissionResponse _$RemotePermissionResponseFromJson(
        Map<String, dynamic> json) =>
    _RemotePermissionResponse(
      visible: json['visible'] as bool,
      create: json['create'] as bool,
      update: json['update'] as bool,
      delete: json['delete'] as bool,
    );

Map<String, dynamic> _$RemotePermissionResponseToJson(
        _RemotePermissionResponse instance) =>
    <String, dynamic>{
      'visible': instance.visible,
      'create': instance.create,
      'update': instance.update,
      'delete': instance.delete,
    };
