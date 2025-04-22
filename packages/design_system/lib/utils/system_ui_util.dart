import 'package:design_system/lib.dart';

class AppSystemUserInterfaceUtil {

  static setBlackNavigation() =>
      SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.black,
        systemNavigationBarIconBrightness: Brightness.light,
      ));

  static restoreSystemUIOverlays(BuildContext context) {
    final systemUiStyle = ThemeApplication.of(context).systemOverlayStyle;
    SystemChrome.setSystemUIOverlayStyle(systemUiStyle);
  }

  static enterFullPage() =>
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

  static exitFullPage() => SystemChrome.setEnabledSystemUIMode(
        SystemUiMode.manual,
        overlays: SystemUiOverlay.values,
      );
}
