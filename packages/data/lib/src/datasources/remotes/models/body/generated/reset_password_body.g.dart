// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../reset_password_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RemoteResetPasswordBody _$RemoteResetPasswordBodyFromJson(
        Map<String, dynamic> json) =>
    _RemoteResetPasswordBody(
      email: json['email'] as String,
      oldPassword: json['oldPassword'] as String,
      newPassword: json['newPassword'] as String,
    );

Map<String, dynamic> _$RemoteResetPasswordBodyToJson(
        _RemoteResetPasswordBody instance) =>
    <String, dynamic>{
      'email': instance.email,
      'oldPassword': instance.oldPassword,
      'newPassword': instance.newPassword,
    };
