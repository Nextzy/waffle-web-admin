// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../verify_otp_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RemoteVerifyOtpBody _$RemoteVerifyOtpBodyFromJson(Map<String, dynamic> json) =>
    _RemoteVerifyOtpBody(
      token: json['token'] as String,
      pin: json['pin'] as String,
    );

Map<String, dynamic> _$RemoteVerifyOtpBodyToJson(
        _RemoteVerifyOtpBody instance) =>
    <String, dynamic>{
      'token': instance.token,
      'pin': instance.pin,
    };
