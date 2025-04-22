import 'package:core/lib.dart';

typedef ResponsiveBuilder = Widget Function(
    DevicePlatform platform, Breakpoint breakpoint);

abstract class AppState<WIDGET extends AppStatefulWidget>
    extends FalconState<WIDGET> {

  AppThemeData get theme =>
      ThemeApplication.of(context, mode: widget.themeMode);

  ThemeMode get themeMode => widget.themeMode ?? theme.themeMode;

  WidgetSize get widgetSize => widget.size ?? theme.defaultWidgetSize;

  InternetConnectionBloc get connectivity =>
      context.read<InternetConnectionBloc>();

  Widget buildResponsive({required ResponsiveBuilder child}) {
    final Breakpoint breakpoint = ResponsiveBreakpoints.of(context).breakpoint;
    return child(PlatformChecker.platform, breakpoint);
  }

  Widget buildPopScope<T>({
    required bool canPop,
    required Function(BuildContext context, T? result)? onPop,
    required Widget child,
  }) =>
      onPop != null
          ? PopScope<T>(
              canPop: canPop,
              onPopInvokedWithResult: (didPop, result) {
                if (didPop) return;
                clearFocus();
                onPop.call(context, result);
                if (!context.router.canPop()) SystemNavigator.pop();
              },
              child: child,
            )
          : child;

  ///========================= NAVIGATE METHOD =========================///
  Future<R?> push<R extends Object?>(
    PageRouteInfo route, {
    OnNavigationFailure? onFailure,
  }) {
    if (mounted) {
      return context.router.push<R>(route, onFailure: onFailure);
    }
    return Future.value(null);
  }

  Future<R?> pushNamed<R extends Object?>(
    String path, {
    bool includePrefixMatches = false,
    OnNavigationFailure? onFailure,
  }) {
    if (mounted) {
      return context.router.pushNamed<R>(
        path,
        includePrefixMatches: includePrefixMatches,
        onFailure: onFailure,
      );
    }
    return Future.value(null);
  }

  Future<T?> replace<T extends Object?>(
    PageRouteInfo route, {
    OnNavigationFailure? onFailure,
  }) {
    if (mounted) {
      return context.router.replace<T>(route, onFailure: onFailure);
    }
    return Future.value(null);
  }

  Future<T?> replaceNamed<T extends Object?>(
    String path, {
    bool includePrefixMatches = false,
    OnNavigationFailure? onFailure,
  }) {
    if (mounted) {
      context.router.replaceNamed(
        path,
        includePrefixMatches: includePrefixMatches,
        onFailure: onFailure,
      );
    }
    return Future.value(null);
  }

  Future<dynamic> navigate(
    PageRouteInfo route, {
    OnNavigationFailure? onFailure,
  }) {
    if (mounted) {
      return context.router.navigate(route, onFailure: onFailure);
    }
    return Future.value(null);
  }

  Future<void> navigateNamed(
    String path, {
    bool includePrefixMatches = false,
    OnNavigationFailure? onFailure,
  }) {
    if (mounted) {
      return context.router.navigateNamed(
        path,
        includePrefixMatches: includePrefixMatches,
        onFailure: onFailure,
      );
    }
    return Future.value(null);
  }

  void back() {
    if (mounted) {
      context.router.back();
    }
  }

  Future<void> pushAll(
    List<PageRouteInfo> routes, {
    OnNavigationFailure? onFailure,
  }) {
    if (mounted) {
      return context.router.pushAll(
        routes,
        onFailure: onFailure,
      );
    }
    return Future.value(null);
  }

  Future<void> replaceAll(
    List<PageRouteInfo> routes, {
    OnNavigationFailure? onFailure,
    bool updateExistingRoutes = true,
  }) {
    if (mounted) {
      return context.router.replaceAll(
        routes,
        onFailure: onFailure,
        updateExistingRoutes: updateExistingRoutes,
      );
    }
    return Future.value(null);
  }

  Future<bool> maybePop<R extends Object?>([R? result]) {
    if (mounted) {
      return context.router.maybePop<R>(result);
    }
    return Future.value(mounted);
  }

  Future<bool> maybePopTop<R extends Object?>([R? result]) {
    if (mounted) {
      return context.router.maybePopTop<R>(result);
    }
    return Future.value(mounted);
  }

  void pop<R extends Object?>([R? result]) {
    if (mounted) {
      return context.router.popForced<R>(result);
    }
  }

  void popUntil(RoutePredicate predicate, {bool scoped = true}) {
    if (mounted) {
      return context.router.popUntil(
        predicate,
        scoped: scoped,
      );
    }
  }

  void popUntilRoot() {
    if (mounted) {
      return context.router.popUntilRoot();
    }
  }

  void popUntilRouteWithName(String name, {bool scoped = true}) {
    if (mounted) {
      return context.router.popUntilRouteWithName(
        name,
        scoped: scoped,
      );
    }
  }

  void popUntilRouteWithPath(String path, {bool scoped = true}) {
    if (mounted) {
      return context.router.popUntilRouteWithPath(
        path,
        scoped: scoped,
      );
    }
  }

  bool removeLast() {
    if (mounted) {
      return context.router.removeLast();
    }
    return mounted;
  }

  bool removeWhere(RouteDataPredicate predicate, {bool notify = true}) {
    if (mounted) {
      return context.router.removeWhere(predicate, notify: notify);
    }
    return mounted;
  }

  Future<PopResult<D>?> pushWithResult<D extends Object?>(
    PageRouteInfo route, {
    OnNavigationFailure? onFailure,
  }) =>
      push<PopResult<D>>(
        route,
        onFailure: onFailure,
      );

  Future<PopResult<D>?> pushNamedWithResult<D extends Object?>(
    String path, {
    bool includePrefixMatches = false,
    OnNavigationFailure? onFailure,
  }) =>
      pushNamed<PopResult<D>>(
        path,
        includePrefixMatches: includePrefixMatches,
        onFailure: onFailure,
      );

  void popWithResult<D extends Object?>(PopResult<D> result) =>
      pop<PopResult<D>>(result);
}

extension AppRouterHelper on BuildContext {
  bool canPop() => router.canPop();

}
