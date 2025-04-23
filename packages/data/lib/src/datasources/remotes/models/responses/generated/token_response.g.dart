// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../token_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RemoteAuthenticationResponse _$RemoteAuthenticationResponseFromJson(
        Map<String, dynamic> json) =>
    _RemoteAuthenticationResponse(
      accessToken: json['accessToken'] as String?,
      refreshToken: json['refreshToken'] as String?,
    );

Map<String, dynamic> _$RemoteAuthenticationResponseToJson(
        _RemoteAuthenticationResponse instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };
