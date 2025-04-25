import 'package:change_application_name/application.dart';

part 'generated/profile_entity.freezed.dart';

@freezed
abstract class ProfileEntity with _$ProfileEntity {
  const factory ProfileEntity({
    String? userId,
    String? email,
    String? role,
    String? username,
    String? firstName,
    String? lastName,
    String? phone,
    String? photoUrl,
  }) = _ProfileEntity;

  factory ProfileEntity.fromResponse(RemoteGetProfileResponse response) =>
      ProfileEntity(
        userId: response.user?.userId ?? '',
        email: response.user?.email ?? '',
        role: response.user?.role ?? '',
        username: response.user?.username ?? '',
        firstName: response.user?.firstName ?? '',
        lastName: response.user?.lastName ?? '',
        phone: response.user?.phone ?? '',
        photoUrl: response.user?.photoUrl ?? '',
      );
}
