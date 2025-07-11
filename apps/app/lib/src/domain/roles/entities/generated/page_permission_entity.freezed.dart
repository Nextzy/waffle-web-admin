// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../page_permission_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PagePermissionEntity {
  PermissionEntity? get analytics;
  PermissionEntity? get campaigns;
  PermissionEntity? get games;
  PermissionEntity? get customers;
  PermissionEntity? get rewardsStock;
  PermissionEntity? get consentAndPolicy;
  PermissionEntity? get allGames;
  PermissionEntity? get users;
  PermissionEntity? get roles;
  PermissionEntity? get billing;

  /// Create a copy of PagePermissionEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PagePermissionEntityCopyWith<PagePermissionEntity> get copyWith =>
      _$PagePermissionEntityCopyWithImpl<PagePermissionEntity>(
          this as PagePermissionEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PagePermissionEntity &&
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
    return 'PagePermissionEntity(analytics: $analytics, campaigns: $campaigns, games: $games, customers: $customers, rewardsStock: $rewardsStock, consentAndPolicy: $consentAndPolicy, allGames: $allGames, users: $users, roles: $roles, billing: $billing)';
  }
}

/// @nodoc
abstract mixin class $PagePermissionEntityCopyWith<$Res> {
  factory $PagePermissionEntityCopyWith(PagePermissionEntity value,
          $Res Function(PagePermissionEntity) _then) =
      _$PagePermissionEntityCopyWithImpl;
  @useResult
  $Res call(
      {PermissionEntity? analytics,
      PermissionEntity? campaigns,
      PermissionEntity? games,
      PermissionEntity? customers,
      PermissionEntity? rewardsStock,
      PermissionEntity? consentAndPolicy,
      PermissionEntity? allGames,
      PermissionEntity? users,
      PermissionEntity? roles,
      PermissionEntity? billing});

  $PermissionEntityCopyWith<$Res>? get analytics;
  $PermissionEntityCopyWith<$Res>? get campaigns;
  $PermissionEntityCopyWith<$Res>? get games;
  $PermissionEntityCopyWith<$Res>? get customers;
  $PermissionEntityCopyWith<$Res>? get rewardsStock;
  $PermissionEntityCopyWith<$Res>? get consentAndPolicy;
  $PermissionEntityCopyWith<$Res>? get allGames;
  $PermissionEntityCopyWith<$Res>? get users;
  $PermissionEntityCopyWith<$Res>? get roles;
  $PermissionEntityCopyWith<$Res>? get billing;
}

/// @nodoc
class _$PagePermissionEntityCopyWithImpl<$Res>
    implements $PagePermissionEntityCopyWith<$Res> {
  _$PagePermissionEntityCopyWithImpl(this._self, this._then);

  final PagePermissionEntity _self;
  final $Res Function(PagePermissionEntity) _then;

  /// Create a copy of PagePermissionEntity
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
              as PermissionEntity?,
      campaigns: freezed == campaigns
          ? _self.campaigns
          : campaigns // ignore: cast_nullable_to_non_nullable
              as PermissionEntity?,
      games: freezed == games
          ? _self.games
          : games // ignore: cast_nullable_to_non_nullable
              as PermissionEntity?,
      customers: freezed == customers
          ? _self.customers
          : customers // ignore: cast_nullable_to_non_nullable
              as PermissionEntity?,
      rewardsStock: freezed == rewardsStock
          ? _self.rewardsStock
          : rewardsStock // ignore: cast_nullable_to_non_nullable
              as PermissionEntity?,
      consentAndPolicy: freezed == consentAndPolicy
          ? _self.consentAndPolicy
          : consentAndPolicy // ignore: cast_nullable_to_non_nullable
              as PermissionEntity?,
      allGames: freezed == allGames
          ? _self.allGames
          : allGames // ignore: cast_nullable_to_non_nullable
              as PermissionEntity?,
      users: freezed == users
          ? _self.users
          : users // ignore: cast_nullable_to_non_nullable
              as PermissionEntity?,
      roles: freezed == roles
          ? _self.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as PermissionEntity?,
      billing: freezed == billing
          ? _self.billing
          : billing // ignore: cast_nullable_to_non_nullable
              as PermissionEntity?,
    ));
  }

  /// Create a copy of PagePermissionEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PermissionEntityCopyWith<$Res>? get analytics {
    if (_self.analytics == null) {
      return null;
    }

    return $PermissionEntityCopyWith<$Res>(_self.analytics!, (value) {
      return _then(_self.copyWith(analytics: value));
    });
  }

  /// Create a copy of PagePermissionEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PermissionEntityCopyWith<$Res>? get campaigns {
    if (_self.campaigns == null) {
      return null;
    }

    return $PermissionEntityCopyWith<$Res>(_self.campaigns!, (value) {
      return _then(_self.copyWith(campaigns: value));
    });
  }

  /// Create a copy of PagePermissionEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PermissionEntityCopyWith<$Res>? get games {
    if (_self.games == null) {
      return null;
    }

    return $PermissionEntityCopyWith<$Res>(_self.games!, (value) {
      return _then(_self.copyWith(games: value));
    });
  }

  /// Create a copy of PagePermissionEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PermissionEntityCopyWith<$Res>? get customers {
    if (_self.customers == null) {
      return null;
    }

    return $PermissionEntityCopyWith<$Res>(_self.customers!, (value) {
      return _then(_self.copyWith(customers: value));
    });
  }

  /// Create a copy of PagePermissionEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PermissionEntityCopyWith<$Res>? get rewardsStock {
    if (_self.rewardsStock == null) {
      return null;
    }

    return $PermissionEntityCopyWith<$Res>(_self.rewardsStock!, (value) {
      return _then(_self.copyWith(rewardsStock: value));
    });
  }

  /// Create a copy of PagePermissionEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PermissionEntityCopyWith<$Res>? get consentAndPolicy {
    if (_self.consentAndPolicy == null) {
      return null;
    }

    return $PermissionEntityCopyWith<$Res>(_self.consentAndPolicy!, (value) {
      return _then(_self.copyWith(consentAndPolicy: value));
    });
  }

  /// Create a copy of PagePermissionEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PermissionEntityCopyWith<$Res>? get allGames {
    if (_self.allGames == null) {
      return null;
    }

    return $PermissionEntityCopyWith<$Res>(_self.allGames!, (value) {
      return _then(_self.copyWith(allGames: value));
    });
  }

  /// Create a copy of PagePermissionEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PermissionEntityCopyWith<$Res>? get users {
    if (_self.users == null) {
      return null;
    }

    return $PermissionEntityCopyWith<$Res>(_self.users!, (value) {
      return _then(_self.copyWith(users: value));
    });
  }

  /// Create a copy of PagePermissionEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PermissionEntityCopyWith<$Res>? get roles {
    if (_self.roles == null) {
      return null;
    }

    return $PermissionEntityCopyWith<$Res>(_self.roles!, (value) {
      return _then(_self.copyWith(roles: value));
    });
  }

  /// Create a copy of PagePermissionEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PermissionEntityCopyWith<$Res>? get billing {
    if (_self.billing == null) {
      return null;
    }

    return $PermissionEntityCopyWith<$Res>(_self.billing!, (value) {
      return _then(_self.copyWith(billing: value));
    });
  }
}

/// @nodoc

class _PagePermissionEntity implements PagePermissionEntity {
  const _PagePermissionEntity(
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

  @override
  final PermissionEntity? analytics;
  @override
  final PermissionEntity? campaigns;
  @override
  final PermissionEntity? games;
  @override
  final PermissionEntity? customers;
  @override
  final PermissionEntity? rewardsStock;
  @override
  final PermissionEntity? consentAndPolicy;
  @override
  final PermissionEntity? allGames;
  @override
  final PermissionEntity? users;
  @override
  final PermissionEntity? roles;
  @override
  final PermissionEntity? billing;

  /// Create a copy of PagePermissionEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PagePermissionEntityCopyWith<_PagePermissionEntity> get copyWith =>
      __$PagePermissionEntityCopyWithImpl<_PagePermissionEntity>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PagePermissionEntity &&
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
    return 'PagePermissionEntity(analytics: $analytics, campaigns: $campaigns, games: $games, customers: $customers, rewardsStock: $rewardsStock, consentAndPolicy: $consentAndPolicy, allGames: $allGames, users: $users, roles: $roles, billing: $billing)';
  }
}

/// @nodoc
abstract mixin class _$PagePermissionEntityCopyWith<$Res>
    implements $PagePermissionEntityCopyWith<$Res> {
  factory _$PagePermissionEntityCopyWith(_PagePermissionEntity value,
          $Res Function(_PagePermissionEntity) _then) =
      __$PagePermissionEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {PermissionEntity? analytics,
      PermissionEntity? campaigns,
      PermissionEntity? games,
      PermissionEntity? customers,
      PermissionEntity? rewardsStock,
      PermissionEntity? consentAndPolicy,
      PermissionEntity? allGames,
      PermissionEntity? users,
      PermissionEntity? roles,
      PermissionEntity? billing});

  @override
  $PermissionEntityCopyWith<$Res>? get analytics;
  @override
  $PermissionEntityCopyWith<$Res>? get campaigns;
  @override
  $PermissionEntityCopyWith<$Res>? get games;
  @override
  $PermissionEntityCopyWith<$Res>? get customers;
  @override
  $PermissionEntityCopyWith<$Res>? get rewardsStock;
  @override
  $PermissionEntityCopyWith<$Res>? get consentAndPolicy;
  @override
  $PermissionEntityCopyWith<$Res>? get allGames;
  @override
  $PermissionEntityCopyWith<$Res>? get users;
  @override
  $PermissionEntityCopyWith<$Res>? get roles;
  @override
  $PermissionEntityCopyWith<$Res>? get billing;
}

/// @nodoc
class __$PagePermissionEntityCopyWithImpl<$Res>
    implements _$PagePermissionEntityCopyWith<$Res> {
  __$PagePermissionEntityCopyWithImpl(this._self, this._then);

  final _PagePermissionEntity _self;
  final $Res Function(_PagePermissionEntity) _then;

  /// Create a copy of PagePermissionEntity
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
    return _then(_PagePermissionEntity(
      analytics: freezed == analytics
          ? _self.analytics
          : analytics // ignore: cast_nullable_to_non_nullable
              as PermissionEntity?,
      campaigns: freezed == campaigns
          ? _self.campaigns
          : campaigns // ignore: cast_nullable_to_non_nullable
              as PermissionEntity?,
      games: freezed == games
          ? _self.games
          : games // ignore: cast_nullable_to_non_nullable
              as PermissionEntity?,
      customers: freezed == customers
          ? _self.customers
          : customers // ignore: cast_nullable_to_non_nullable
              as PermissionEntity?,
      rewardsStock: freezed == rewardsStock
          ? _self.rewardsStock
          : rewardsStock // ignore: cast_nullable_to_non_nullable
              as PermissionEntity?,
      consentAndPolicy: freezed == consentAndPolicy
          ? _self.consentAndPolicy
          : consentAndPolicy // ignore: cast_nullable_to_non_nullable
              as PermissionEntity?,
      allGames: freezed == allGames
          ? _self.allGames
          : allGames // ignore: cast_nullable_to_non_nullable
              as PermissionEntity?,
      users: freezed == users
          ? _self.users
          : users // ignore: cast_nullable_to_non_nullable
              as PermissionEntity?,
      roles: freezed == roles
          ? _self.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as PermissionEntity?,
      billing: freezed == billing
          ? _self.billing
          : billing // ignore: cast_nullable_to_non_nullable
              as PermissionEntity?,
    ));
  }

  /// Create a copy of PagePermissionEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PermissionEntityCopyWith<$Res>? get analytics {
    if (_self.analytics == null) {
      return null;
    }

    return $PermissionEntityCopyWith<$Res>(_self.analytics!, (value) {
      return _then(_self.copyWith(analytics: value));
    });
  }

  /// Create a copy of PagePermissionEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PermissionEntityCopyWith<$Res>? get campaigns {
    if (_self.campaigns == null) {
      return null;
    }

    return $PermissionEntityCopyWith<$Res>(_self.campaigns!, (value) {
      return _then(_self.copyWith(campaigns: value));
    });
  }

  /// Create a copy of PagePermissionEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PermissionEntityCopyWith<$Res>? get games {
    if (_self.games == null) {
      return null;
    }

    return $PermissionEntityCopyWith<$Res>(_self.games!, (value) {
      return _then(_self.copyWith(games: value));
    });
  }

  /// Create a copy of PagePermissionEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PermissionEntityCopyWith<$Res>? get customers {
    if (_self.customers == null) {
      return null;
    }

    return $PermissionEntityCopyWith<$Res>(_self.customers!, (value) {
      return _then(_self.copyWith(customers: value));
    });
  }

  /// Create a copy of PagePermissionEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PermissionEntityCopyWith<$Res>? get rewardsStock {
    if (_self.rewardsStock == null) {
      return null;
    }

    return $PermissionEntityCopyWith<$Res>(_self.rewardsStock!, (value) {
      return _then(_self.copyWith(rewardsStock: value));
    });
  }

  /// Create a copy of PagePermissionEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PermissionEntityCopyWith<$Res>? get consentAndPolicy {
    if (_self.consentAndPolicy == null) {
      return null;
    }

    return $PermissionEntityCopyWith<$Res>(_self.consentAndPolicy!, (value) {
      return _then(_self.copyWith(consentAndPolicy: value));
    });
  }

  /// Create a copy of PagePermissionEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PermissionEntityCopyWith<$Res>? get allGames {
    if (_self.allGames == null) {
      return null;
    }

    return $PermissionEntityCopyWith<$Res>(_self.allGames!, (value) {
      return _then(_self.copyWith(allGames: value));
    });
  }

  /// Create a copy of PagePermissionEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PermissionEntityCopyWith<$Res>? get users {
    if (_self.users == null) {
      return null;
    }

    return $PermissionEntityCopyWith<$Res>(_self.users!, (value) {
      return _then(_self.copyWith(users: value));
    });
  }

  /// Create a copy of PagePermissionEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PermissionEntityCopyWith<$Res>? get roles {
    if (_self.roles == null) {
      return null;
    }

    return $PermissionEntityCopyWith<$Res>(_self.roles!, (value) {
      return _then(_self.copyWith(roles: value));
    });
  }

  /// Create a copy of PagePermissionEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PermissionEntityCopyWith<$Res>? get billing {
    if (_self.billing == null) {
      return null;
    }

    return $PermissionEntityCopyWith<$Res>(_self.billing!, (value) {
      return _then(_self.copyWith(billing: value));
    });
  }
}

// dart format on
