import 'package:core/lib.dart';

class AppRoute extends CustomRoute {
  AppRoute({
    required super.page,
    super.fullscreenDialog,
    super.maintainState,
    super.fullMatch = false,
    super.guards,
    super.usesPathAsKey = false,
    super.children,
    super.meta = const {},
    super.title,
    super.path,
    super.keepHistory,
    super.initial,
    super.allowSnapshotting = true,
    RouteTransitionsBuilder? transitionsBuilder,
    super.customRouteBuilder,
    super.durationInMilliseconds,
    super.reverseDurationInMilliseconds,
    super.opaque = true,
    super.barrierDismissible = true,
    super.barrierLabel,
    super.restorationId,
    super.barrierColor,
  }) : super(
          transitionsBuilder: transitionsBuilder ?? _defaultTransition,
        );

  static Widget _defaultTransition(
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child) {
    if (PlatformChecker.isWeb && PlatformChecker.isDesktop) {
      return AppTransitionsBuilders.noTransition(
          context, animation, secondaryAnimation, child);
    } else {
      return CupertinoPageTransition(
        primaryRouteAnimation: animation,
        secondaryRouteAnimation: secondaryAnimation,
        linearTransition: false,
        child: child,
      );
    }
  }
}

class AppTransitionsBuilders {
  const AppTransitionsBuilders._();

  static const RouteTransitionsBuilder noTransition = _noTransition;

  static Widget _noTransition(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return child;
  }
}
