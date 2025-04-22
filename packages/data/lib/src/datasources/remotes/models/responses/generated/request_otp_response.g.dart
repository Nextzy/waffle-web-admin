// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../request_otp_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RemoteRequestOtpResponse _$RemoteRequestOtpResponseFromJson(
        Map<String, dynamic> json) =>
    _RemoteRequestOtpResponse(
      status: json['status'] as String?,
      token: json['token'] as String?,
      refno: json['refno'] as String?,
    );

Map<String, dynamic> _$RemoteRequestOtpResponseToJson(
        _RemoteRequestOtpResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'token': instance.token,
      'refno': instance.refno,
    };
