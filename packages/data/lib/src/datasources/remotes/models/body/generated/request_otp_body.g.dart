// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../request_otp_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RemoteRequestOtpBody _$RemoteRequestOtpBodyFromJson(
        Map<String, dynamic> json) =>
    _RemoteRequestOtpBody(
      phoneNumber: json['phoneNumber'] as String,
    );

Map<String, dynamic> _$RemoteRequestOtpBodyToJson(
        _RemoteRequestOtpBody instance) =>
    <String, dynamic>{
      'phoneNumber': instance.phoneNumber,
    };
