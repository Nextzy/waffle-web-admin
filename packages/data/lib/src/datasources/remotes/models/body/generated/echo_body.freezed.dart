// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../echo_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RemoteEchoBody {
  String get name;

  /// Create a copy of RemoteEchoBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RemoteEchoBodyCopyWith<RemoteEchoBody> get copyWith =>
      _$RemoteEchoBodyCopyWithImpl<RemoteEchoBody>(
          this as RemoteEchoBody, _$identity);

  /// Serializes this RemoteEchoBody to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RemoteEchoBody &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @override
  String toString() {
    return 'RemoteEchoBody(name: $name)';
  }
}

/// @nodoc
abstract mixin class $RemoteEchoBodyCopyWith<$Res> {
  factory $RemoteEchoBodyCopyWith(
          RemoteEchoBody value, $Res Function(RemoteEchoBody) _then) =
      _$RemoteEchoBodyCopyWithImpl;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$RemoteEchoBodyCopyWithImpl<$Res>
    implements $RemoteEchoBodyCopyWith<$Res> {
  _$RemoteEchoBodyCopyWithImpl(this._self, this._then);

  final RemoteEchoBody _self;
  final $Res Function(RemoteEchoBody) _then;

  /// Create a copy of RemoteEchoBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _RemoteEchoBody implements RemoteEchoBody {
  const _RemoteEchoBody({required this.name});
  factory _RemoteEchoBody.fromJson(Map<String, dynamic> json) =>
      _$RemoteEchoBodyFromJson(json);

  @override
  final String name;

  /// Create a copy of RemoteEchoBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RemoteEchoBodyCopyWith<_RemoteEchoBody> get copyWith =>
      __$RemoteEchoBodyCopyWithImpl<_RemoteEchoBody>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RemoteEchoBodyToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemoteEchoBody &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @override
  String toString() {
    return 'RemoteEchoBody(name: $name)';
  }
}

/// @nodoc
abstract mixin class _$RemoteEchoBodyCopyWith<$Res>
    implements $RemoteEchoBodyCopyWith<$Res> {
  factory _$RemoteEchoBodyCopyWith(
          _RemoteEchoBody value, $Res Function(_RemoteEchoBody) _then) =
      __$RemoteEchoBodyCopyWithImpl;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$RemoteEchoBodyCopyWithImpl<$Res>
    implements _$RemoteEchoBodyCopyWith<$Res> {
  __$RemoteEchoBodyCopyWithImpl(this._self, this._then);

  final _RemoteEchoBody _self;
  final $Res Function(_RemoteEchoBody) _then;

  /// Create a copy of RemoteEchoBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
  }) {
    return _then(_RemoteEchoBody(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
