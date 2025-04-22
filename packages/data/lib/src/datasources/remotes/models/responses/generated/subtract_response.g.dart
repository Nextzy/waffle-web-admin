// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../subtract_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RemoteSubtractResponse _$RemoteSubtractResponseFromJson(
        Map<String, dynamic> json) =>
    _RemoteSubtractResponse(
      number: (json['result'] as num?)?.toInt(),
    );

Map<String, dynamic> _$RemoteSubtractResponseToJson(
        _RemoteSubtractResponse instance) =>
    <String, dynamic>{
      'result': instance.number,
    };
