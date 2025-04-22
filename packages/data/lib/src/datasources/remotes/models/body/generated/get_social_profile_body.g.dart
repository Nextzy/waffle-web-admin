// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../get_social_profile_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RemoteGetSocialProfileBody _$RemoteGetSocialProfileBodyFromJson(
        Map<String, dynamic> json) =>
    _RemoteGetSocialProfileBody(
      accessToken: json['accessToken'] as String,
      social: json['social'] as String,
    );

Map<String, dynamic> _$RemoteGetSocialProfileBodyToJson(
        _RemoteGetSocialProfileBody instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'social': instance.social,
    };
