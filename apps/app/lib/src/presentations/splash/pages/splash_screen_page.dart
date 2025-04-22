import 'package:change_application_name/application.dart';



class SplashScreenPage extends AppPage {
  const SplashScreenPage({
    super.key = const Key('SplashScreenPage'),
    required this.setupApplication,
    required this.builder,
    this.skipLoadingForWeb = true,
    this.skipLoadingDebugMode = true,
    this.minimumFirstComingDuration = const Duration(milliseconds: 2400),
    this.minimumSecondComingDuration = const Duration(milliseconds: 400),
    this.firstAnimateDuration = const Duration(milliseconds: 300),
    this.secondAnimateDuration = const Duration(milliseconds: 150),
  });

  final Future<SetupApplication> setupApplication;
  final bool skipLoadingDebugMode;
  final bool skipLoadingForWeb;
  final Duration minimumFirstComingDuration;
  final Duration firstAnimateDuration;
  final Duration minimumSecondComingDuration;
  final Duration secondAnimateDuration;
  final Widget Function(BuildContext context, SetupApplication setup) builder;

  @override
  State<SplashScreenPage> createState() => _SplashScreenState();
}

class _SplashScreenState extends AppState<SplashScreenPage>
    with SingleTickerProviderStateMixin {
  AppThemeData get _theme {
    final brightness = MediaQuery.of(context).platformBrightness;
    return brightness == Brightness.dark
        ? AppTheme().darkTheme
        : AppTheme().lightTheme;
  }

  bool get skipLoadingForWeb =>
      widget.skipLoadingForWeb &&
      PlatformChecker.isWeb &&
      PlatformChecker.isDesktop;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: AppLocalDatabase.instance.loadSetting(),
        builder: (context, snapshot) {
          if (snapshot.data == null) return Container(color: _theme.color.bg);

          final setting = snapshot.data!;
          final isFirstComing = (!widget.skipLoadingDebugMode || !kDebugMode) &&
              (!setting.isTapExited);

          return FutureBuilder(
            future: Future.wait([
              // Must be first.
              widget.setupApplication,
              //Clear exited field
              AppLocalDatabase.instance.updateTapExitApp(false),
              skipLoadingForWeb
                  ? Future.delayed(Duration.zero)
                  : isFirstComing
                      ? Future.delayed(widget.minimumFirstComingDuration)
                      : Future.delayed(widget.minimumSecondComingDuration),
            ]),
            builder: (context, snapshot) => Container(
              color: _theme.color.bg,
              child: AnimatedSwitcher(
                duration: skipLoadingForWeb
                    ? Duration.zero
                    : isFirstComing
                        ? widget.firstAnimateDuration
                        : widget.secondAnimateDuration,
                child: snapshot.data == null
                    ? buildSplashScreen(context)
                    : widget.builder(context, snapshot.data![0]),
              ),
            ),
          );
        });
  }

  Widget buildSplashScreen(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: _theme.toThemeData(),
        home: AnnotatedRegion(
          value: _theme.systemOverlayStyle,
          child: Scaffold(
            body: Center(
              child: StackLayout(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Assets.logo.splash.svgIcon(size: 100),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: SafeArea(
                      child: Padding(
                        padding: Space.insetBottom40,
                        child: AppLinearLoadingIndicator(
                          width: 100.0,
                          color: _theme.color.iconPrimary,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
