import 'package:design_system/lib.dart';

class AppScrollView extends AppStatelessWidget {
  const AppScrollView({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return NotificationListener<OverscrollIndicatorNotification>(
      onNotification: _onNotification,
      child: SingleChildScrollView(
        child: child,
      ),
    );
  }

  bool _onNotification(OverscrollIndicatorNotification? notification) {
    // Consumes the overscroll notification and disables the glow effect
    notification?.disallowIndicator();

    return true;
  }
}

class NoGlowScrollBehavior extends MaterialScrollBehavior {
  const NoGlowScrollBehavior();

  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.stylus,
        PointerDeviceKind.unknown,
      };

  Widget buildViewportChrome(
          BuildContext context, Widget child, AxisDirection axisDirection) =>
      child;
}
