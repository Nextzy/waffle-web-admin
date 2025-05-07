import 'package:change_application_name/application.dart';

part 'generated/page_permission_entity.freezed.dart';

@freezed
abstract class PagePermissionEntity with _$PagePermissionEntity {
  const factory PagePermissionEntity({
    PermissionEntity? analytics,
    PermissionEntity? campaigns,
    PermissionEntity? games,
    PermissionEntity? customers,
    PermissionEntity? rewardsStock,
    PermissionEntity? consentAndPolicy,
    PermissionEntity? allGames,
    PermissionEntity? users,
    PermissionEntity? roles,
    PermissionEntity? billing,
  }) = _PagePermissionEntity;

  factory PagePermissionEntity.fromResponse(
          RemotePagePermissionResponse response) =>
      PagePermissionEntity(
        analytics: PermissionEntity.fromResponse(
          'Analytics',
          response.analytics,
        ),
        campaigns: PermissionEntity.fromResponse(
          'Campaigns',
          response.campaigns,
        ),
        games: PermissionEntity.fromResponse(
          'Games',
          response.games,
        ),
        customers: PermissionEntity.fromResponse(
          'Customers',
          response.customers,
        ),
        rewardsStock: PermissionEntity.fromResponse(
          'Rewards Stock',
          response.rewardsStock,
        ),
        consentAndPolicy: PermissionEntity.fromResponse(
          'Consent And Policy',
          response.consentAndPolicy,
        ),
        allGames: PermissionEntity.fromResponse(
          'All Games',
          response.allGames,
        ),
        users: PermissionEntity.fromResponse(
          'Users',
          response.users,
        ),
        roles: PermissionEntity.fromResponse(
          'Roles',
          response.roles,
        ),
        billing: PermissionEntity.fromResponse(
          'Billing',
          response.billing,
        ),
      );
}
