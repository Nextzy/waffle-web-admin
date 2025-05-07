// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../page_permission_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RemotePagePermissionResponse {
  RemotePermissionResponse? get analytics;
  RemotePermissionResponse? get campaigns;
  RemotePermissionResponse? get games;
  RemotePermissionResponse? get customers;
  RemotePermissionResponse? get rewardsStock;
  RemotePermissionResponse? get consentAndPolicy;
  RemotePermissionResponse? get allGames;
  RemotePermissionResponse? get users;
  RemotePermissionResponse? get roles;
  RemotePermissionResponse? get billing;

  /// Create a copy of RemotePagePermissionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RemotePagePermissionResponseCopyWith<RemotePagePermissionResponse>
      get copyWith => _$RemotePagePermissionResponseCopyWithImpl<
              RemotePagePermissionResponse>(
          this as RemotePagePermissionResponse, _$identity);

  /// Serializes this RemotePagePermissionResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RemotePagePermissionResponse &&
            (identical(other.analytics, analytics) ||
                other.analytics == analytics) &&
            (identical(other.campaigns, campaigns) ||
                other.campaigns == campaigns) &&
            (identical(other.games, games) || other.games == games) &&
            (identical(other.customers, customers) ||
                other.customers == customers) &&
            (identical(other.rewardsStock, rewardsStock) ||
                other.rewardsStock == rewardsStock) &&
            (identical(other.consentAndPolicy, consentAndPolicy) ||
                other.consentAndPolicy == consentAndPolicy) &&
            (identical(other.allGames, allGames) ||
                other.allGames == allGames) &&
            (identical(other.users, users) || other.users == users) &&
            (identical(other.roles, roles) || other.roles == roles) &&
            (identical(other.billing, billing) || other.billing == billing));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      analytics,
      campaigns,
      games,
      customers,
      rewardsStock,
      consentAndPolicy,
      allGames,
      users,
      roles,
      billing);

  @override
  String toString() {
    return 'RemotePagePermissionResponse(analytics: $analytics, campaigns: $campaigns, games: $games, customers: $customers, rewardsStock: $rewardsStock, consentAndPolicy: $consentAndPolicy, allGames: $allGames, users: $users, roles: $roles, billing: $billing)';
  }
}

/// @nodoc
abstract mixin class $RemotePagePermissionResponseCopyWith<$Res> {
  factory $RemotePagePermissionResponseCopyWith(
          RemotePagePermissionResponse value,
          $Res Function(RemotePagePermissionResponse) _then) =
      _$RemotePagePermissionResponseCopyWithImpl;
  @useResult
  $Res call(
      {RemotePermissionResponse? analytics,
      RemotePermissionResponse? campaigns,
      RemotePermissionResponse? games,
      RemotePermissionResponse? customers,
      RemotePermissionResponse? rewardsStock,
      RemotePermissionResponse? consentAndPolicy,
      RemotePermissionResponse? allGames,
      RemotePermissionResponse? users,
      RemotePermissionResponse? roles,
      RemotePermissionResponse? billing});

  $RemotePermissionResponseCopyWith<$Res>? get analytics;
  $RemotePermissionResponseCopyWith<$Res>? get campaigns;
  $RemotePermissionResponseCopyWith<$Res>? get games;
  $RemotePermissionResponseCopyWith<$Res>? get customers;
  $RemotePermissionResponseCopyWith<$Res>? get rewardsStock;
  $RemotePermissionResponseCopyWith<$Res>? get consentAndPolicy;
  $RemotePermissionResponseCopyWith<$Res>? get allGames;
  $RemotePermissionResponseCopyWith<$Res>? get users;
  $RemotePermissionResponseCopyWith<$Res>? get roles;
  $RemotePermissionResponseCopyWith<$Res>? get billing;
}

/// @nodoc
class _$RemotePagePermissionResponseCopyWithImpl<$Res>
    implements $RemotePagePermissionResponseCopyWith<$Res> {
  _$RemotePagePermissionResponseCopyWithImpl(this._self, this._then);

  final RemotePagePermissionResponse _self;
  final $Res Function(RemotePagePermissionResponse) _then;

  /// Create a copy of RemotePagePermissionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? analytics = freezed,
    Object? campaigns = freezed,
    Object? games = freezed,
    Object? customers = freezed,
    Object? rewardsStock = freezed,
    Object? consentAndPolicy = freezed,
    Object? allGames = freezed,
    Object? users = freezed,
    Object? roles = freezed,
    Object? billing = freezed,
  }) {
    return _then(_self.copyWith(
      analytics: freezed == analytics
          ? _self.analytics
          : analytics // ignore: cast_nullable_to_non_nullable
              as RemotePermissionResponse?,
      campaigns: freezed == campaigns
          ? _self.campaigns
          : campaigns // ignore: cast_nullable_to_non_nullable
              as RemotePermissionResponse?,
      games: freezed == games
          ? _self.games
          : games // ignore: cast_nullable_to_non_nullable
              as RemotePermissionResponse?,
      customers: freezed == customers
          ? _self.customers
          : customers // ignore: cast_nullable_to_non_nullable
              as RemotePermissionResponse?,
      rewardsStock: freezed == rewardsStock
          ? _self.rewardsStock
          : rewardsStock // ignore: cast_nullable_to_non_nullable
              as RemotePermissionResponse?,
      consentAndPolicy: freezed == consentAndPolicy
          ? _self.consentAndPolicy
          : consentAndPolicy // ignore: cast_nullable_to_non_nullable
              as RemotePermissionResponse?,
      allGames: freezed == allGames
          ? _self.allGames
          : allGames // ignore: cast_nullable_to_non_nullable
              as RemotePermissionResponse?,
      users: freezed == users
          ? _self.users
          : users // ignore: cast_nullable_to_non_nullable
              as RemotePermissionResponse?,
      roles: freezed == roles
          ? _self.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as RemotePermissionResponse?,
      billing: freezed == billing
          ? _self.billing
          : billing // ignore: cast_nullable_to_non_nullable
              as RemotePermissionResponse?,
    ));
  }

  /// Create a copy of RemotePagePermissionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RemotePermissionResponseCopyWith<$Res>? get analytics {
    if (_self.analytics == null) {
      return null;
    }

    return $RemotePermissionResponseCopyWith<$Res>(_self.analytics!, (value) {
      return _then(_self.copyWith(analytics: value));
    });
  }

  /// Create a copy of RemotePagePermissionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RemotePermissionResponseCopyWith<$Res>? get campaigns {
    if (_self.campaigns == null) {
      return null;
    }

    return $RemotePermissionResponseCopyWith<$Res>(_self.campaigns!, (value) {
      return _then(_self.copyWith(campaigns: value));
    });
  }

  /// Create a copy of RemotePagePermissionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RemotePermissionResponseCopyWith<$Res>? get games {
    if (_self.games == null) {
      return null;
    }

    return $RemotePermissionResponseCopyWith<$Res>(_self.games!, (value) {
      return _then(_self.copyWith(games: value));
    });
  }

  /// Create a copy of RemotePagePermissionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RemotePermissionResponseCopyWith<$Res>? get customers {
    if (_self.customers == null) {
      return null;
    }

    return $RemotePermissionResponseCopyWith<$Res>(_self.customers!, (value) {
      return _then(_self.copyWith(customers: value));
    });
  }

  /// Create a copy of RemotePagePermissionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RemotePermissionResponseCopyWith<$Res>? get rewardsStock {
    if (_self.rewardsStock == null) {
      return null;
    }

    return $RemotePermissionResponseCopyWith<$Res>(_self.rewardsStock!,
        (value) {
      return _then(_self.copyWith(rewardsStock: value));
    });
  }

  /// Create a copy of RemotePagePermissionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RemotePermissionResponseCopyWith<$Res>? get consentAndPolicy {
    if (_self.consentAndPolicy == null) {
      return null;
    }

    return $RemotePermissionResponseCopyWith<$Res>(_self.consentAndPolicy!,
        (value) {
      return _then(_self.copyWith(consentAndPolicy: value));
    });
  }

  /// Create a copy of RemotePagePermissionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RemotePermissionResponseCopyWith<$Res>? get allGames {
    if (_self.allGames == null) {
      return null;
    }

    return $RemotePermissionResponseCopyWith<$Res>(_self.allGames!, (value) {
      return _then(_self.copyWith(allGames: value));
    });
  }

  /// Create a copy of RemotePagePermissionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RemotePermissionResponseCopyWith<$Res>? get users {
    if (_self.users == null) {
      return null;
    }

    return $RemotePermissionResponseCopyWith<$Res>(_self.users!, (value) {
      return _then(_self.copyWith(users: value));
    });
  }

  /// Create a copy of RemotePagePermissionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RemotePermissionResponseCopyWith<$Res>? get roles {
    if (_self.roles == null) {
      return null;
    }

    return $RemotePermissionResponseCopyWith<$Res>(_self.roles!, (value) {
      return _then(_self.copyWith(roles: value));
    });
  }

  /// Create a copy of RemotePagePermissionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RemotePermissionResponseCopyWith<$Res>? get billing {
    if (_self.billing == null) {
      return null;
    }

    return $RemotePermissionResponseCopyWith<$Res>(_self.billing!, (value) {
      return _then(_self.copyWith(billing: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _RemotePagePermissionResponse implements RemotePagePermissionResponse {
  const _RemotePagePermissionResponse(
      {this.analytics,
      this.campaigns,
      this.games,
      this.customers,
      this.rewardsStock,
      this.consentAndPolicy,
      this.allGames,
      this.users,
      this.roles,
      this.billing});
  factory _RemotePagePermissionResponse.fromJson(Map<String, dynamic> json) =>
      _$RemotePagePermissionResponseFromJson(json);

  @override
  final RemotePermissionResponse? analytics;
  @override
  final RemotePermissionResponse? campaigns;
  @override
  final RemotePermissionResponse? games;
  @override
  final RemotePermissionResponse? customers;
  @override
  final RemotePermissionResponse? rewardsStock;
  @override
  final RemotePermissionResponse? consentAndPolicy;
  @override
  final RemotePermissionResponse? allGames;
  @override
  final RemotePermissionResponse? users;
  @override
  final RemotePermissionResponse? roles;
  @override
  final RemotePermissionResponse? billing;

  /// Create a copy of RemotePagePermissionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RemotePagePermissionResponseCopyWith<_RemotePagePermissionResponse>
      get copyWith => __$RemotePagePermissionResponseCopyWithImpl<
          _RemotePagePermissionResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RemotePagePermissionResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemotePagePermissionResponse &&
            (identical(other.analytics, analytics) ||
                other.analytics == analytics) &&
            (identical(other.campaigns, campaigns) ||
                other.campaigns == campaigns) &&
            (identical(other.games, games) || other.games == games) &&
            (identical(other.customers, customers) ||
                other.customers == customers) &&
            (identical(other.rewardsStock, rewardsStock) ||
                other.rewardsStock == rewardsStock) &&
            (identical(other.consentAndPolicy, consentAndPolicy) ||
                other.consentAndPolicy == consentAndPolicy) &&
            (identical(other.allGames, allGames) ||
                other.allGames == allGames) &&
            (identical(other.users, users) || other.users == users) &&
            (identical(other.roles, roles) || other.roles == roles) &&
            (identical(other.billing, billing) || other.billing == billing));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      analytics,
      campaigns,
      games,
      customers,
      rewardsStock,
      consentAndPolicy,
      allGames,
      users,
      roles,
      billing);

  @override
  String toString() {
    return 'RemotePagePermissionResponse(analytics: $analytics, campaigns: $campaigns, games: $games, customers: $customers, rewardsStock: $rewardsStock, consentAndPolicy: $consentAndPolicy, allGames: $allGames, users: $users, roles: $roles, billing: $billing)';
  }
}

/// @nodoc
abstract mixin class _$RemotePagePermissionResponseCopyWith<$Res>
    implements $RemotePagePermissionResponseCopyWith<$Res> {
  factory _$RemotePagePermissionResponseCopyWith(
          _RemotePagePermissionResponse value,
          $Res Function(_RemotePagePermissionResponse) _then) =
      __$RemotePagePermissionResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {RemotePermissionResponse? analytics,
      RemotePermissionResponse? campaigns,
      RemotePermissionResponse? games,
      RemotePermissionResponse? customers,
      RemotePermissionResponse? rewardsStock,
      RemotePermissionResponse? consentAndPolicy,
      RemotePermissionResponse? allGames,
      RemotePermissionResponse? users,
      RemotePermissionResponse? roles,
      RemotePermissionResponse? billing});

  @override
  $RemotePermissionResponseCopyWith<$Res>? get analytics;
  @override
  $RemotePermissionResponseCopyWith<$Res>? get campaigns;
  @override
  $RemotePermissionResponseCopyWith<$Res>? get games;
  @override
  $RemotePermissionResponseCopyWith<$Res>? get customers;
  @override
  $RemotePermissionResponseCopyWith<$Res>? get rewardsStock;
  @override
  $RemotePermissionResponseCopyWith<$Res>? get consentAndPolicy;
  @override
  $RemotePermissionResponseCopyWith<$Res>? get allGames;
  @override
  $RemotePermissionResponseCopyWith<$Res>? get users;
  @override
  $RemotePermissionResponseCopyWith<$Res>? get roles;
  @override
  $RemotePermissionResponseCopyWith<$Res>? get billing;
}

/// @nodoc
class __$RemotePagePermissionResponseCopyWithImpl<$Res>
    implements _$RemotePagePermissionResponseCopyWith<$Res> {
  __$RemotePagePermissionResponseCopyWithImpl(this._self, this._then);

  final _RemotePagePermissionResponse _self;
  final $Res Function(_RemotePagePermissionResponse) _then;

  /// Create a copy of RemotePagePermissionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? analytics = freezed,
    Object? campaigns = freezed,
    Object? games = freezed,
    Object? customers = freezed,
    Object? rewardsStock = freezed,
    Object? consentAndPolicy = freezed,
    Object? allGames = freezed,
    Object? users = freezed,
    Object? roles = freezed,
    Object? billing = freezed,
  }) {
    return _then(_RemotePagePermissionResponse(
      analytics: freezed == analytics
          ? _self.analytics
          : analytics // ignore: cast_nullable_to_non_nullable
              as RemotePermissionResponse?,
      campaigns: freezed == campaigns
          ? _self.campaigns
          : campaigns // ignore: cast_nullable_to_non_nullable
              as RemotePermissionResponse?,
      games: freezed == games
          ? _self.games
          : games // ignore: cast_nullable_to_non_nullable
              as RemotePermissionResponse?,
      customers: freezed == customers
          ? _self.customers
          : customers // ignore: cast_nullable_to_non_nullable
              as RemotePermissionResponse?,
      rewardsStock: freezed == rewardsStock
          ? _self.rewardsStock
          : rewardsStock // ignore: cast_nullable_to_non_nullable
              as RemotePermissionResponse?,
      consentAndPolicy: freezed == consentAndPolicy
          ? _self.consentAndPolicy
          : consentAndPolicy // ignore: cast_nullable_to_non_nullable
              as RemotePermissionResponse?,
      allGames: freezed == allGames
          ? _self.allGames
          : allGames // ignore: cast_nullable_to_non_nullable
              as RemotePermissionResponse?,
      users: freezed == users
          ? _self.users
          : users // ignore: cast_nullable_to_non_nullable
              as RemotePermissionResponse?,
      roles: freezed == roles
          ? _self.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as RemotePermissionResponse?,
      billing: freezed == billing
          ? _self.billing
          : billing // ignore: cast_nullable_to_non_nullable
              as RemotePermissionResponse?,
    ));
  }

  /// Create a copy of RemotePagePermissionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RemotePermissionResponseCopyWith<$Res>? get analytics {
    if (_self.analytics == null) {
      return null;
    }

    return $RemotePermissionResponseCopyWith<$Res>(_self.analytics!, (value) {
      return _then(_self.copyWith(analytics: value));
    });
  }

  /// Create a copy of RemotePagePermissionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RemotePermissionResponseCopyWith<$Res>? get campaigns {
    if (_self.campaigns == null) {
      return null;
    }

    return $RemotePermissionResponseCopyWith<$Res>(_self.campaigns!, (value) {
      return _then(_self.copyWith(campaigns: value));
    });
  }

  /// Create a copy of RemotePagePermissionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RemotePermissionResponseCopyWith<$Res>? get games {
    if (_self.games == null) {
      return null;
    }

    return $RemotePermissionResponseCopyWith<$Res>(_self.games!, (value) {
      return _then(_self.copyWith(games: value));
    });
  }

  /// Create a copy of RemotePagePermissionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RemotePermissionResponseCopyWith<$Res>? get customers {
    if (_self.customers == null) {
      return null;
    }

    return $RemotePermissionResponseCopyWith<$Res>(_self.customers!, (value) {
      return _then(_self.copyWith(customers: value));
    });
  }

  /// Create a copy of RemotePagePermissionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RemotePermissionResponseCopyWith<$Res>? get rewardsStock {
    if (_self.rewardsStock == null) {
      return null;
    }

    return $RemotePermissionResponseCopyWith<$Res>(_self.rewardsStock!,
        (value) {
      return _then(_self.copyWith(rewardsStock: value));
    });
  }

  /// Create a copy of RemotePagePermissionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RemotePermissionResponseCopyWith<$Res>? get consentAndPolicy {
    if (_self.consentAndPolicy == null) {
      return null;
    }

    return $RemotePermissionResponseCopyWith<$Res>(_self.consentAndPolicy!,
        (value) {
      return _then(_self.copyWith(consentAndPolicy: value));
    });
  }

  /// Create a copy of RemotePagePermissionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RemotePermissionResponseCopyWith<$Res>? get allGames {
    if (_self.allGames == null) {
      return null;
    }

    return $RemotePermissionResponseCopyWith<$Res>(_self.allGames!, (value) {
      return _then(_self.copyWith(allGames: value));
    });
  }

  /// Create a copy of RemotePagePermissionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RemotePermissionResponseCopyWith<$Res>? get users {
    if (_self.users == null) {
      return null;
    }

    return $RemotePermissionResponseCopyWith<$Res>(_self.users!, (value) {
      return _then(_self.copyWith(users: value));
    });
  }

  /// Create a copy of RemotePagePermissionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RemotePermissionResponseCopyWith<$Res>? get roles {
    if (_self.roles == null) {
      return null;
    }

    return $RemotePermissionResponseCopyWith<$Res>(_self.roles!, (value) {
      return _then(_self.copyWith(roles: value));
    });
  }

  /// Create a copy of RemotePagePermissionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RemotePermissionResponseCopyWith<$Res>? get billing {
    if (_self.billing == null) {
      return null;
    }

    return $RemotePermissionResponseCopyWith<$Res>(_self.billing!, (value) {
      return _then(_self.copyWith(billing: value));
    });
  }
}

// dart format on
