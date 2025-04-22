export 'package:core/core.dart';
export 'package:localization/localization.dart';
export 'package:data/data.dart';
export 'package:design_system/design_system.dart';
export 'package:utils/utils.dart';

//
export 'package:change_application_name/src/src.dart';
export 'package:change_application_name/router.dart';
export 'package:change_application_name/extensions/extensions.dart';
export 'package:change_application_name/environments/environments.dart';
export 'package:change_application_name/routers/routers.dart';
export 'package:sms_autofill/sms_autofill.dart' hide Orientation, ColorBuilder;
export 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
export 'package:country_code_picker/country_code_picker.dart';
export 'package:flutter/semantics.dart';
export '../examples/examples.dart';

import 'package:change_application_name/application.dart';

const platformChannel = MethodChannel('com.example/channel');

class SetupApplication {
  SetupApplication({
    required this.packageInfo,
    required this.connectivityResult,
    required this.setting,
  });

  final PackageInfo packageInfo;
  final List<ConnectivityResult> connectivityResult;
  final SettingTableData setting;
}

class MyApplication extends AppStatefulWidget {
  const MyApplication({
    this.locale,
    this.builder,
  });

  static const defaultThemeMode = ThemeMode.light;

  final Locale? locale;
  final TransitionBuilder? builder;

  @override
  State<StatefulWidget> createState() => _MyApplicationState();
}

class _MyApplicationState extends ApplicationState<MyApplication>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void onDeeplinkUri(Uri uri) {
    switch (uri.path) {
      case '/link/':
        break;
    }
    super.onDeeplinkUri(uri);
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
  }

  Future<SetupApplication> setupApplication() async {
    AppHttpClient.instance.setupBaseUrl(AppEnv.instance.apiBaseUrl);
    AppHttpClient.instance.setupCredential(apiKey: AppEnv.instance.apiKey);

    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    final packageInfo = await PackageInfo.fromPlatform();
    final connectivityResult = await Connectivity().checkConnectivity();
    final setting = await AppLocalDatabase.instance.loadSetting();

    return SetupApplication(
      packageInfo: packageInfo,
      connectivityResult: connectivityResult,
      setting: setting,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ToastificationWrapper(
      // For `slang` package
      child: TranslationProvider(
        child: SplashScreenPage(
          skipLoadingDebugMode: true,
          setupApplication: setupApplication(),
          builder: (context, setup) => MultiProvider(
            providers: [
              BlocProvider<InternetConnectionBloc>(
                create: (BuildContext context) => InternetConnectionBloc(
                  initialResult: setup.connectivityResult,
                ),
                lazy: false,
              ),
              BlocProvider<AppRouterBloc>(
                create: (BuildContext context) => AppRouterBloc(),
              ),
              BlocProvider<SettingBloc>(
                create: (BuildContext context) =>
                    SettingBloc(initialSetting: setup.setting),
                lazy: false,
              ),
            ],
            child: BlocBuilder<SettingBloc, SettingTableData>(
              builder: (context, setting) => AnimatedBuilder(
                animation: _controller,
                builder: (BuildContext context, Widget? child) =>
                    BlocBuilder<AppRouterBloc, AppRouter>(
                  builder: (context, AppRouter router) => AppMaterialRoute(
                    debugShowCheckedModeBanner: false,

                    ///============= Setup Localization =============//
                    localizationsDelegates: const [
                      CountryLocalizations.delegate,
                      ...GlobalMaterialLocalizations.delegates,
                    ],
                    supportedLocales: AppLocaleUtils.supportedLocales,
                    locale: widget.locale ??
                        TranslationProvider.of(context).flutterLocale,
                    onGenerateTitle: (BuildContext context) =>
                        AppEnv.instance.name,
                    theme: const AppTheme(),
                    themeMode: setting.themeMode.toEnum(ThemeMode.values),
                    routerConfig: router.config(
                      navigatorObservers: () => [
                        AutoRouteObserver(),
                      ],
                    ),
                    builder: (context, child) => WebZoom(
                      child: InApplicationUpdate(
                        packageInfo: setup.packageInfo,
                        child: widget.builder?.call(context, child) ?? child!,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
