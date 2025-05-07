// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../page_permission_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RemotePagePermissionResponse _$RemotePagePermissionResponseFromJson(
        Map<String, dynamic> json) =>
    _RemotePagePermissionResponse(
      analytics: json['analytics'] == null
          ? null
          : RemotePermissionResponse.fromJson(
              json['analytics'] as Map<String, dynamic>),
      campaigns: json['campaigns'] == null
          ? null
          : RemotePermissionResponse.fromJson(
              json['campaigns'] as Map<String, dynamic>),
      games: json['games'] == null
          ? null
          : RemotePermissionResponse.fromJson(
              json['games'] as Map<String, dynamic>),
      customers: json['customers'] == null
          ? null
          : RemotePermissionResponse.fromJson(
              json['customers'] as Map<String, dynamic>),
      rewardsStock: json['rewardsStock'] == null
          ? null
          : RemotePermissionResponse.fromJson(
              json['rewardsStock'] as Map<String, dynamic>),
      consentAndPolicy: json['consentAndPolicy'] == null
          ? null
          : RemotePermissionResponse.fromJson(
              json['consentAndPolicy'] as Map<String, dynamic>),
      allGames: json['allGames'] == null
          ? null
          : RemotePermissionResponse.fromJson(
              json['allGames'] as Map<String, dynamic>),
      users: json['users'] == null
          ? null
          : RemotePermissionResponse.fromJson(
              json['users'] as Map<String, dynamic>),
      roles: json['roles'] == null
          ? null
          : RemotePermissionResponse.fromJson(
              json['roles'] as Map<String, dynamic>),
      billing: json['billing'] == null
          ? null
          : RemotePermissionResponse.fromJson(
              json['billing'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RemotePagePermissionResponseToJson(
        _RemotePagePermissionResponse instance) =>
    <String, dynamic>{
      'analytics': instance.analytics,
      'campaigns': instance.campaigns,
      'games': instance.games,
      'customers': instance.customers,
      'rewardsStock': instance.rewardsStock,
      'consentAndPolicy': instance.consentAndPolicy,
      'allGames': instance.allGames,
      'users': instance.users,
      'roles': instance.roles,
      'billing': instance.billing,
    };
