// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../update_profile_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RemoteUpdateProfileBody _$RemoteUpdateProfileBodyFromJson(
        Map<String, dynamic> json) =>
    _RemoteUpdateProfileBody(
      email: json['email'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      phone: json['phone'] as String,
    );

Map<String, dynamic> _$RemoteUpdateProfileBodyToJson(
        _RemoteUpdateProfileBody instance) =>
    <String, dynamic>{
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'phone': instance.phone,
    };
