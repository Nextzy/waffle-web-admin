// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../verify_otp_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RemoteVerifyOtpResponse _$RemoteVerifyOtpResponseFromJson(
        Map<String, dynamic> json) =>
    _RemoteVerifyOtpResponse(
      status: json['status'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$RemoteVerifyOtpResponseToJson(
        _RemoteVerifyOtpResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
