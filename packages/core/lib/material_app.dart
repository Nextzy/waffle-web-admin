import 'package:core/lib.dart';

/// The Widget that configures your application.
class AppMaterialRoute extends AppStatefulWidget {
  const AppMaterialRoute({
    super.key,
    super.themeMode = ThemeMode.system,
    this.scaffoldMessengerKey,
    this.routeInformationProvider,
    this.routeInformationParser,
    this.routerDelegate,
    this.routerConfig,
    this.backButtonDispatcher,
    this.builder,
    this.title = '',
    this.onGenerateTitle,
    this.color,
    this.theme,
    this.locale,
    this.localizationsDelegates,
    this.localeListResolutionCallback,
    this.localeResolutionCallback,
    this.supportedLocales = const <Locale>[Locale('en', 'GB')],
    this.debugShowMaterialGrid = false,
    this.showPerformanceOverlay = false,
    this.checkerboardRasterCacheImages = false,
    this.checkerboardOffscreenLayers = false,
    this.showSemanticsDebugger = false,
    this.debugShowCheckedModeBanner = true,
    this.shortcuts,
    this.actions,
    this.restorationScopeId,
  });

  final GlobalKey<ScaffoldMessengerState>? scaffoldMessengerKey;
  final RouteInformationProvider? routeInformationProvider;
  final RouteInformationParser<Object>? routeInformationParser;
  final RouterDelegate<Object>? routerDelegate;
  final RouterConfig<Object>? routerConfig;
  final BackButtonDispatcher? backButtonDispatcher;
  final TransitionBuilder? builder;
  final String title;
  final GenerateAppTitle? onGenerateTitle;
  final Color? color;
  final AppTheme? theme;
  final Locale? locale;
  final Iterable<LocalizationsDelegate<dynamic>>? localizationsDelegates;
  final LocaleListResolutionCallback? localeListResolutionCallback;
  final LocaleResolutionCallback? localeResolutionCallback;
  final Iterable<Locale> supportedLocales;
  final bool debugShowMaterialGrid;
  final bool showPerformanceOverlay;
  final bool checkerboardRasterCacheImages;
  final bool checkerboardOffscreenLayers;
  final bool showSemanticsDebugger;
  final bool debugShowCheckedModeBanner;
  final Map<ShortcutActivator, Intent>? shortcuts;
  final Map<Type, Action<Intent>>? actions;
  final String? restorationScopeId;

  @override
  State<StatefulWidget> createState() => _AppMaterialRoute();
}

class _AppMaterialRoute extends AppState<AppMaterialRoute> {
  bool get isDarkTheme => Theme.of(context).brightness == Brightness.dark;

  @override
  Widget build(BuildContext context) {
    return ThemeApplication(
      themeMode: widget.themeMode,
      lightTheme: widget.theme?.lightTheme,
      darkTheme: widget.theme?.darkTheme,
      child: MaterialApp.router(
        scaffoldMessengerKey: widget.scaffoldMessengerKey,
        routeInformationProvider: widget.routeInformationProvider,
        routeInformationParser: widget.routeInformationParser,
        routerDelegate: widget.routerDelegate,
        routerConfig: widget.routerConfig,
        backButtonDispatcher: widget.backButtonDispatcher,
        builder: (context, child) => AppBreakpoint.createBuilder(
          context,
          widget.builder?.call(context, child),
        ),
        title: widget.title,
        onGenerateTitle: widget.onGenerateTitle,
        color: widget.color,
        theme: widget.theme?.lightTheme.toThemeData(),
        darkTheme: widget.theme?.darkTheme.toThemeData(),
        highContrastTheme: widget.theme?.highContrastTheme?.toThemeData(),
        highContrastDarkTheme:
            widget.theme?.highContrastDarkTheme?.toThemeData(),
        themeMode: widget.themeMode,
        themeAnimationDuration:
            widget.theme?.themeAnimationDuration ?? kThemeAnimationDuration,
        themeAnimationCurve: widget.theme?.themeAnimationCurve ?? Curves.linear,
        scrollBehavior: widget.theme?.scrollBehavior,
        locale: widget.locale,
        localizationsDelegates: widget.localizationsDelegates,
        localeListResolutionCallback: widget.localeListResolutionCallback,
        localeResolutionCallback: widget.localeResolutionCallback,
        supportedLocales: widget.supportedLocales,
        debugShowMaterialGrid: widget.debugShowMaterialGrid,
        showPerformanceOverlay: widget.showPerformanceOverlay,
        checkerboardRasterCacheImages: widget.checkerboardRasterCacheImages,
        checkerboardOffscreenLayers: widget.checkerboardOffscreenLayers,
        showSemanticsDebugger: widget.showSemanticsDebugger,
        debugShowCheckedModeBanner: widget.debugShowCheckedModeBanner,
        shortcuts: widget.shortcuts,
        actions: widget.actions,
        restorationScopeId: widget.restorationScopeId,
      ),
    );
  }

  Widget _flavorBanner({
    required Widget child,
    required String name,
    bool show = true,
  }) =>
      show
          ? Banner(
              location: BannerLocation.topStart,
              message: name,
              color: Colors.green.withValues(alpha: 0.6),
              textStyle: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 12.0,
                  letterSpacing: 1.0),
              textDirection: TextDirection.ltr,
              child: child,
            )
          : Container(
              child: child,
            );
}

class ThemeApplication extends InheritedWidget {
  const ThemeApplication({
    super.key,
    this.darkTheme,
    this.lightTheme,
    required this.themeMode,
    required super.child,
  });

  final AppThemeData? lightTheme;
  final AppThemeData? darkTheme;
  final ThemeMode? themeMode;

  static AppThemeData of(BuildContext context, {ThemeMode? mode}) {
    final theme =
        context.dependOnInheritedWidgetOfExactType<ThemeApplication>();
    if (theme == null) {
      throw FlutterError(
          'ThemeApplication.of() called with a context that does not contain a ThemeApplication.');
    }
    if (theme.darkTheme == null) return theme.lightTheme!;

    return (mode ?? theme.themeMode) == ThemeMode.dark
        ? theme.darkTheme!
        : theme.lightTheme!;
  }

  @override
  bool updateShouldNotify(covariant ThemeApplication oldWidget) {
    return lightTheme != oldWidget.lightTheme;
  }
}
