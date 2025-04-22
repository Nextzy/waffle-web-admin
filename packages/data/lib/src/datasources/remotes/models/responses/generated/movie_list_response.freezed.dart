// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../movie_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RemoteMovieListResponse {
  List<RemoteMovie>? get data;

  /// Create a copy of RemoteMovieListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RemoteMovieListResponseCopyWith<RemoteMovieListResponse> get copyWith =>
      _$RemoteMovieListResponseCopyWithImpl<RemoteMovieListResponse>(
          this as RemoteMovieListResponse, _$identity);

  /// Serializes this RemoteMovieListResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RemoteMovieListResponse &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @override
  String toString() {
    return 'RemoteMovieListResponse(data: $data)';
  }
}

/// @nodoc
abstract mixin class $RemoteMovieListResponseCopyWith<$Res> {
  factory $RemoteMovieListResponseCopyWith(RemoteMovieListResponse value,
          $Res Function(RemoteMovieListResponse) _then) =
      _$RemoteMovieListResponseCopyWithImpl;
  @useResult
  $Res call({List<RemoteMovie>? data});
}

/// @nodoc
class _$RemoteMovieListResponseCopyWithImpl<$Res>
    implements $RemoteMovieListResponseCopyWith<$Res> {
  _$RemoteMovieListResponseCopyWithImpl(this._self, this._then);

  final RemoteMovieListResponse _self;
  final $Res Function(RemoteMovieListResponse) _then;

  /// Create a copy of RemoteMovieListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_self.copyWith(
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<RemoteMovie>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _RemoteMovieListResponse implements RemoteMovieListResponse {
  const _RemoteMovieListResponse({final List<RemoteMovie>? data})
      : _data = data;
  factory _RemoteMovieListResponse.fromJson(Map<String, dynamic> json) =>
      _$RemoteMovieListResponseFromJson(json);

  final List<RemoteMovie>? _data;
  @override
  List<RemoteMovie>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of RemoteMovieListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RemoteMovieListResponseCopyWith<_RemoteMovieListResponse> get copyWith =>
      __$RemoteMovieListResponseCopyWithImpl<_RemoteMovieListResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RemoteMovieListResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemoteMovieListResponse &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @override
  String toString() {
    return 'RemoteMovieListResponse(data: $data)';
  }
}

/// @nodoc
abstract mixin class _$RemoteMovieListResponseCopyWith<$Res>
    implements $RemoteMovieListResponseCopyWith<$Res> {
  factory _$RemoteMovieListResponseCopyWith(_RemoteMovieListResponse value,
          $Res Function(_RemoteMovieListResponse) _then) =
      __$RemoteMovieListResponseCopyWithImpl;
  @override
  @useResult
  $Res call({List<RemoteMovie>? data});
}

/// @nodoc
class __$RemoteMovieListResponseCopyWithImpl<$Res>
    implements _$RemoteMovieListResponseCopyWith<$Res> {
  __$RemoteMovieListResponseCopyWithImpl(this._self, this._then);

  final _RemoteMovieListResponse _self;
  final $Res Function(_RemoteMovieListResponse) _then;

  /// Create a copy of RemoteMovieListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_RemoteMovieListResponse(
      data: freezed == data
          ? _self._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<RemoteMovie>?,
    ));
  }
}

/// @nodoc
mixin _$RemoteMovie {
  String? get id;
  String? get name;

  /// Create a copy of RemoteMovie
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RemoteMovieCopyWith<RemoteMovie> get copyWith =>
      _$RemoteMovieCopyWithImpl<RemoteMovie>(this as RemoteMovie, _$identity);

  /// Serializes this RemoteMovie to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RemoteMovie &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'RemoteMovie(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class $RemoteMovieCopyWith<$Res> {
  factory $RemoteMovieCopyWith(
          RemoteMovie value, $Res Function(RemoteMovie) _then) =
      _$RemoteMovieCopyWithImpl;
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class _$RemoteMovieCopyWithImpl<$Res> implements $RemoteMovieCopyWith<$Res> {
  _$RemoteMovieCopyWithImpl(this._self, this._then);

  final RemoteMovie _self;
  final $Res Function(RemoteMovie) _then;

  /// Create a copy of RemoteMovie
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _RemoteMovie implements RemoteMovie {
  const _RemoteMovie({this.id, this.name});
  factory _RemoteMovie.fromJson(Map<String, dynamic> json) =>
      _$RemoteMovieFromJson(json);

  @override
  final String? id;
  @override
  final String? name;

  /// Create a copy of RemoteMovie
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RemoteMovieCopyWith<_RemoteMovie> get copyWith =>
      __$RemoteMovieCopyWithImpl<_RemoteMovie>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RemoteMovieToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemoteMovie &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'RemoteMovie(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class _$RemoteMovieCopyWith<$Res>
    implements $RemoteMovieCopyWith<$Res> {
  factory _$RemoteMovieCopyWith(
          _RemoteMovie value, $Res Function(_RemoteMovie) _then) =
      __$RemoteMovieCopyWithImpl;
  @override
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class __$RemoteMovieCopyWithImpl<$Res> implements _$RemoteMovieCopyWith<$Res> {
  __$RemoteMovieCopyWithImpl(this._self, this._then);

  final _RemoteMovie _self;
  final $Res Function(_RemoteMovie) _then;

  /// Create a copy of RemoteMovie
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_RemoteMovie(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
