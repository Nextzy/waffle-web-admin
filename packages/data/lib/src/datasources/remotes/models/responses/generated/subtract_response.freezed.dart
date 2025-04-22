// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../subtract_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RemoteSubtractResponse {
  @JsonKey(name: 'result')
  int? get number;

  /// Create a copy of RemoteSubtractResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RemoteSubtractResponseCopyWith<RemoteSubtractResponse> get copyWith =>
      _$RemoteSubtractResponseCopyWithImpl<RemoteSubtractResponse>(
          this as RemoteSubtractResponse, _$identity);

  /// Serializes this RemoteSubtractResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RemoteSubtractResponse &&
            (identical(other.number, number) || other.number == number));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, number);

  @override
  String toString() {
    return 'RemoteSubtractResponse(number: $number)';
  }
}

/// @nodoc
abstract mixin class $RemoteSubtractResponseCopyWith<$Res> {
  factory $RemoteSubtractResponseCopyWith(RemoteSubtractResponse value,
          $Res Function(RemoteSubtractResponse) _then) =
      _$RemoteSubtractResponseCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'result') int? number});
}

/// @nodoc
class _$RemoteSubtractResponseCopyWithImpl<$Res>
    implements $RemoteSubtractResponseCopyWith<$Res> {
  _$RemoteSubtractResponseCopyWithImpl(this._self, this._then);

  final RemoteSubtractResponse _self;
  final $Res Function(RemoteSubtractResponse) _then;

  /// Create a copy of RemoteSubtractResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = freezed,
  }) {
    return _then(_self.copyWith(
      number: freezed == number
          ? _self.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _RemoteSubtractResponse implements RemoteSubtractResponse {
  const _RemoteSubtractResponse({@JsonKey(name: 'result') this.number});
  factory _RemoteSubtractResponse.fromJson(Map<String, dynamic> json) =>
      _$RemoteSubtractResponseFromJson(json);

  @override
  @JsonKey(name: 'result')
  final int? number;

  /// Create a copy of RemoteSubtractResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RemoteSubtractResponseCopyWith<_RemoteSubtractResponse> get copyWith =>
      __$RemoteSubtractResponseCopyWithImpl<_RemoteSubtractResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RemoteSubtractResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemoteSubtractResponse &&
            (identical(other.number, number) || other.number == number));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, number);

  @override
  String toString() {
    return 'RemoteSubtractResponse(number: $number)';
  }
}

/// @nodoc
abstract mixin class _$RemoteSubtractResponseCopyWith<$Res>
    implements $RemoteSubtractResponseCopyWith<$Res> {
  factory _$RemoteSubtractResponseCopyWith(_RemoteSubtractResponse value,
          $Res Function(_RemoteSubtractResponse) _then) =
      __$RemoteSubtractResponseCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'result') int? number});
}

/// @nodoc
class __$RemoteSubtractResponseCopyWithImpl<$Res>
    implements _$RemoteSubtractResponseCopyWith<$Res> {
  __$RemoteSubtractResponseCopyWithImpl(this._self, this._then);

  final _RemoteSubtractResponse _self;
  final $Res Function(_RemoteSubtractResponse) _then;

  /// Create a copy of RemoteSubtractResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? number = freezed,
  }) {
    return _then(_RemoteSubtractResponse(
      number: freezed == number
          ? _self.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

// dart format on
