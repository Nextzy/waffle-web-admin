import 'package:core/lib.dart';

class ForceUpdateChecker {
  ForceUpdateChecker({
    FirebaseRemoteConfig? remoteConfig,
    required this.packageInfo,
  }) : _remoteConfig = remoteConfig ?? FirebaseRemoteConfig.instance;

  static const FORCE_UPDATE_KEY = 'force_update_build_number';
  static const MAINTENANCE_KEY = 'is_maintenance';

  final PackageInfo packageInfo;
  final FirebaseRemoteConfig _remoteConfig;

  bool get forceUpdate {
    if (kIsWeb) return false;

    final int buildNumber = packageInfo.buildNumber.toIntOrZero();
    final int buildNumberForceUpdate = _remoteConfig.getInt(FORCE_UPDATE_KEY);

    // Log.t('Local build number: $buildNumber\n'
    //     'Force build number: $buildNumberForceUpdate');

    if (buildNumber < buildNumberForceUpdate) {
      /// Force update
      return true;
    }

    return false;
  }

  bool get isMaintenance {
    final bool isMaintenance = _remoteConfig.getBool(MAINTENANCE_KEY);
    // Log.t('Maintenance: $isMaintenance');
    return isMaintenance;
  }

  StreamSubscription<RemoteConfigUpdate>? onConfigUpdated(
    Function(RemoteConfigUpdate event) onData,
  ) {
    if (PlatformChecker.isAndroidNative || PlatformChecker.isIosNative) {
      return _remoteConfig.onConfigUpdated.listen(
        (RemoteConfigUpdate event) async {
          await _remoteConfig.activate();
          Log.t(event.updatedKeys);
          onData.call(event);
        },
      );
    } else {
      return null;
    }
  }
}
