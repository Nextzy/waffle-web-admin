// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../subtract_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RemoteSubtractBody _$RemoteSubtractBodyFromJson(Map<String, dynamic> json) =>
    _RemoteSubtractBody(
      subtrahend: (json['subtrahend'] as num).toInt(),
      minuend: (json['minuend'] as num).toInt(),
    );

Map<String, dynamic> _$RemoteSubtractBodyToJson(_RemoteSubtractBody instance) =>
    <String, dynamic>{
      'subtrahend': instance.subtrahend,
      'minuend': instance.minuend,
    };
