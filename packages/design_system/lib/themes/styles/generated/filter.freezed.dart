// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppImageFilter {
  double get sigmaX;
  double get sigmaY;
  TileMode get tileMode;

  /// Create a copy of AppImageFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AppImageFilterCopyWith<AppImageFilter> get copyWith =>
      _$AppImageFilterCopyWithImpl<AppImageFilter>(
          this as AppImageFilter, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppImageFilter &&
            (identical(other.sigmaX, sigmaX) || other.sigmaX == sigmaX) &&
            (identical(other.sigmaY, sigmaY) || other.sigmaY == sigmaY) &&
            (identical(other.tileMode, tileMode) ||
                other.tileMode == tileMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sigmaX, sigmaY, tileMode);

  @override
  String toString() {
    return 'AppImageFilter(sigmaX: $sigmaX, sigmaY: $sigmaY, tileMode: $tileMode)';
  }
}

/// @nodoc
abstract mixin class $AppImageFilterCopyWith<$Res> {
  factory $AppImageFilterCopyWith(
          AppImageFilter value, $Res Function(AppImageFilter) _then) =
      _$AppImageFilterCopyWithImpl;
  @useResult
  $Res call({double sigmaX, double sigmaY, TileMode tileMode});
}

/// @nodoc
class _$AppImageFilterCopyWithImpl<$Res>
    implements $AppImageFilterCopyWith<$Res> {
  _$AppImageFilterCopyWithImpl(this._self, this._then);

  final AppImageFilter _self;
  final $Res Function(AppImageFilter) _then;

  /// Create a copy of AppImageFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sigmaX = null,
    Object? sigmaY = null,
    Object? tileMode = null,
  }) {
    return _then(_self.copyWith(
      sigmaX: null == sigmaX
          ? _self.sigmaX
          : sigmaX // ignore: cast_nullable_to_non_nullable
              as double,
      sigmaY: null == sigmaY
          ? _self.sigmaY
          : sigmaY // ignore: cast_nullable_to_non_nullable
              as double,
      tileMode: null == tileMode
          ? _self.tileMode
          : tileMode // ignore: cast_nullable_to_non_nullable
              as TileMode,
    ));
  }
}

/// @nodoc

class _AppImageFilter extends AppImageFilter {
  const _AppImageFilter(
      {this.sigmaX = 0.0, this.sigmaY = 0.0, this.tileMode = TileMode.clamp})
      : super._();

  @override
  @JsonKey()
  final double sigmaX;
  @override
  @JsonKey()
  final double sigmaY;
  @override
  @JsonKey()
  final TileMode tileMode;

  /// Create a copy of AppImageFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AppImageFilterCopyWith<_AppImageFilter> get copyWith =>
      __$AppImageFilterCopyWithImpl<_AppImageFilter>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppImageFilter &&
            (identical(other.sigmaX, sigmaX) || other.sigmaX == sigmaX) &&
            (identical(other.sigmaY, sigmaY) || other.sigmaY == sigmaY) &&
            (identical(other.tileMode, tileMode) ||
                other.tileMode == tileMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sigmaX, sigmaY, tileMode);

  @override
  String toString() {
    return 'AppImageFilter(sigmaX: $sigmaX, sigmaY: $sigmaY, tileMode: $tileMode)';
  }
}

/// @nodoc
abstract mixin class _$AppImageFilterCopyWith<$Res>
    implements $AppImageFilterCopyWith<$Res> {
  factory _$AppImageFilterCopyWith(
          _AppImageFilter value, $Res Function(_AppImageFilter) _then) =
      __$AppImageFilterCopyWithImpl;
  @override
  @useResult
  $Res call({double sigmaX, double sigmaY, TileMode tileMode});
}

/// @nodoc
class __$AppImageFilterCopyWithImpl<$Res>
    implements _$AppImageFilterCopyWith<$Res> {
  __$AppImageFilterCopyWithImpl(this._self, this._then);

  final _AppImageFilter _self;
  final $Res Function(_AppImageFilter) _then;

  /// Create a copy of AppImageFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? sigmaX = null,
    Object? sigmaY = null,
    Object? tileMode = null,
  }) {
    return _then(_AppImageFilter(
      sigmaX: null == sigmaX
          ? _self.sigmaX
          : sigmaX // ignore: cast_nullable_to_non_nullable
              as double,
      sigmaY: null == sigmaY
          ? _self.sigmaY
          : sigmaY // ignore: cast_nullable_to_non_nullable
              as double,
      tileMode: null == tileMode
          ? _self.tileMode
          : tileMode // ignore: cast_nullable_to_non_nullable
              as TileMode,
    ));
  }
}

// dart format on
