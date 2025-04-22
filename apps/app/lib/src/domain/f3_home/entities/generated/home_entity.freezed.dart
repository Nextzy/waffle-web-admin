// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../home_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeEntity {
  String get yourData;

  /// Create a copy of HomeEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeEntityCopyWith<HomeEntity> get copyWith =>
      _$HomeEntityCopyWithImpl<HomeEntity>(this as HomeEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeEntity &&
            (identical(other.yourData, yourData) ||
                other.yourData == yourData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, yourData);

  @override
  String toString() {
    return 'HomeEntity(yourData: $yourData)';
  }
}

/// @nodoc
abstract mixin class $HomeEntityCopyWith<$Res> {
  factory $HomeEntityCopyWith(
          HomeEntity value, $Res Function(HomeEntity) _then) =
      _$HomeEntityCopyWithImpl;
  @useResult
  $Res call({String yourData});
}

/// @nodoc
class _$HomeEntityCopyWithImpl<$Res> implements $HomeEntityCopyWith<$Res> {
  _$HomeEntityCopyWithImpl(this._self, this._then);

  final HomeEntity _self;
  final $Res Function(HomeEntity) _then;

  /// Create a copy of HomeEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? yourData = null,
  }) {
    return _then(_self.copyWith(
      yourData: null == yourData
          ? _self.yourData
          : yourData // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _HomeEntity implements HomeEntity {
  const _HomeEntity({required this.yourData});

  @override
  final String yourData;

  /// Create a copy of HomeEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$HomeEntityCopyWith<_HomeEntity> get copyWith =>
      __$HomeEntityCopyWithImpl<_HomeEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeEntity &&
            (identical(other.yourData, yourData) ||
                other.yourData == yourData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, yourData);

  @override
  String toString() {
    return 'HomeEntity(yourData: $yourData)';
  }
}

/// @nodoc
abstract mixin class _$HomeEntityCopyWith<$Res>
    implements $HomeEntityCopyWith<$Res> {
  factory _$HomeEntityCopyWith(
          _HomeEntity value, $Res Function(_HomeEntity) _then) =
      __$HomeEntityCopyWithImpl;
  @override
  @useResult
  $Res call({String yourData});
}

/// @nodoc
class __$HomeEntityCopyWithImpl<$Res> implements _$HomeEntityCopyWith<$Res> {
  __$HomeEntityCopyWithImpl(this._self, this._then);

  final _HomeEntity _self;
  final $Res Function(_HomeEntity) _then;

  /// Create a copy of HomeEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? yourData = null,
  }) {
    return _then(_HomeEntity(
      yourData: null == yourData
          ? _self.yourData
          : yourData // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
