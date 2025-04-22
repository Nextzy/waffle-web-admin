import 'package:core/lib.dart';

typedef WidgetStateContextCallback<DATA> = Widget Function(
    BuildContext context, WidgetStateEvent<DATA> state);

typedef ListWidgetStateContextCallback<DATA> = List<Widget> Function(
    BuildContext context, WidgetStateEvent<DATA> state);

typedef PreferredWidgetStateContextCallback<DATA> = PreferredSizeWidget
    Function(BuildContext context, WidgetStateEvent<DATA> state);

typedef PopStateCallback<DATA> = bool Function(WidgetStateEvent<DATA> state);

abstract class AppBlocWidgetState<
    WIDGET extends StatefulWidget,
    BLOC extends BlocBase<WidgetStateEvent<DATA>>,
    DATA> extends FalconWidgetEventBlocState<WIDGET, BLOC, DATA> {
  AppThemeData get theme => ThemeApplication.of(context);

  InternetConnectionBloc get connectivity =>
      context.read<InternetConnectionBloc>();

  Widget buildResponsive({required ResponsiveBuilder child}) {
    final Breakpoint breakpoint = ResponsiveBreakpoints.of(context).breakpoint;

    return child(PlatformChecker.platform, breakpoint);
  }

  Widget buildPopScope({
    required WidgetStateEvent<DATA?> state,
    required PopStateCallback<DATA?>? canPop,
    required PopListener<WidgetStateEvent<DATA?>>? onPop,
    required Widget child,
  }) =>
      onPop != null || canPop != null
          ? PopScope(
              canPop: canPop?.call(state) ?? true,
              onPopInvokedWithResult: (didPop, result) {
                if (didPop) return;
                clearFocus();
                onPop?.call(state, result);
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
