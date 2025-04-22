// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../subtract_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RemoteSubtractBody {
  int get subtrahend;
  int get minuend;

  /// Create a copy of RemoteSubtractBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RemoteSubtractBodyCopyWith<RemoteSubtractBody> get copyWith =>
      _$RemoteSubtractBodyCopyWithImpl<RemoteSubtractBody>(
          this as RemoteSubtractBody, _$identity);

  /// Serializes this RemoteSubtractBody to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RemoteSubtractBody &&
            (identical(other.subtrahend, subtrahend) ||
                other.subtrahend == subtrahend) &&
            (identical(other.minuend, minuend) || other.minuend == minuend));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, subtrahend, minuend);

  @override
  String toString() {
    return 'RemoteSubtractBody(subtrahend: $subtrahend, minuend: $minuend)';
  }
}

/// @nodoc
abstract mixin class $RemoteSubtractBodyCopyWith<$Res> {
  factory $RemoteSubtractBodyCopyWith(
          RemoteSubtractBody value, $Res Function(RemoteSubtractBody) _then) =
      _$RemoteSubtractBodyCopyWithImpl;
  @useResult
  $Res call({int subtrahend, int minuend});
}

/// @nodoc
class _$RemoteSubtractBodyCopyWithImpl<$Res>
    implements $RemoteSubtractBodyCopyWith<$Res> {
  _$RemoteSubtractBodyCopyWithImpl(this._self, this._then);

  final RemoteSubtractBody _self;
  final $Res Function(RemoteSubtractBody) _then;

  /// Create a copy of RemoteSubtractBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subtrahend = null,
    Object? minuend = null,
  }) {
    return _then(_self.copyWith(
      subtrahend: null == subtrahend
          ? _self.subtrahend
          : subtrahend // ignore: cast_nullable_to_non_nullable
              as int,
      minuend: null == minuend
          ? _self.minuend
          : minuend // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _RemoteSubtractBody implements RemoteSubtractBody {
  const _RemoteSubtractBody({required this.subtrahend, required this.minuend});
  factory _RemoteSubtractBody.fromJson(Map<String, dynamic> json) =>
      _$RemoteSubtractBodyFromJson(json);

  @override
  final int subtrahend;
  @override
  final int minuend;

  /// Create a copy of RemoteSubtractBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RemoteSubtractBodyCopyWith<_RemoteSubtractBody> get copyWith =>
      __$RemoteSubtractBodyCopyWithImpl<_RemoteSubtractBody>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RemoteSubtractBodyToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemoteSubtractBody &&
            (identical(other.subtrahend, subtrahend) ||
                other.subtrahend == subtrahend) &&
            (identical(other.minuend, minuend) || other.minuend == minuend));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, subtrahend, minuend);

  @override
  String toString() {
    return 'RemoteSubtractBody(subtrahend: $subtrahend, minuend: $minuend)';
  }
}

/// @nodoc
abstract mixin class _$RemoteSubtractBodyCopyWith<$Res>
    implements $RemoteSubtractBodyCopyWith<$Res> {
  factory _$RemoteSubtractBodyCopyWith(
          _RemoteSubtractBody value, $Res Function(_RemoteSubtractBody) _then) =
      __$RemoteSubtractBodyCopyWithImpl;
  @override
  @useResult
  $Res call({int subtrahend, int minuend});
}

/// @nodoc
class __$RemoteSubtractBodyCopyWithImpl<$Res>
    implements _$RemoteSubtractBodyCopyWith<$Res> {
  __$RemoteSubtractBodyCopyWithImpl(this._self, this._then);

  final _RemoteSubtractBody _self;
  final $Res Function(_RemoteSubtractBody) _then;

  /// Create a copy of RemoteSubtractBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? subtrahend = null,
    Object? minuend = null,
  }) {
    return _then(_RemoteSubtractBody(
      subtrahend: null == subtrahend
          ? _self.subtrahend
          : subtrahend // ignore: cast_nullable_to_non_nullable
              as int,
      minuend: null == minuend
          ? _self.minuend
          : minuend // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
