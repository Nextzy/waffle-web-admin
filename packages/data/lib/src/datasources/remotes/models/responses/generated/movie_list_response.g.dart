// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../movie_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RemoteMovieListResponse _$RemoteMovieListResponseFromJson(
        Map<String, dynamic> json) =>
    _RemoteMovieListResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => RemoteMovie.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RemoteMovieListResponseToJson(
        _RemoteMovieListResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_RemoteMovie _$RemoteMovieFromJson(Map<String, dynamic> json) => _RemoteMovie(
      id: json['id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$RemoteMovieToJson(_RemoteMovie instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
