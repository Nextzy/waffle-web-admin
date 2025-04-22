// ignore_for_file: prefer_const_constructors
export 'colors/transparent.dart';
export 'styles/styles.dart';
export 'colors/colors.dart';
export 'colors/raws/color_stratum_palette.dart';
export 'colors/raws/color_untitled_palette.dart';
export 'texts.dart';
export 'themes.dart';
export 'theme_data.dart';
export 'constants.dart';
export 'theme_color.dart';

import 'package:design_system/lib.dart';

class AppTheme {
  const AppTheme({
    this.lightTheme = const AppThemeData(
      defaultWidgetSize: WidgetSize.md,
      themeMode: ThemeMode.light,
      color: AppLightThemeColor(),
      borderRadius: AppRadius(),
      border: AppBorder(),
      shadow: AppShadow(),
      filter: AppFilter(),
      space: AppSpace(),
      size: AppSize(),
      systemOverlayStyle: AppSystemUI.light,
      systemOverlayInverseStyle: AppSystemUI.dark,
      splashFactory: NoSplash.splashFactory,
    ),
    this.darkTheme = const AppThemeData(
      defaultWidgetSize: WidgetSize.md,
      themeMode: ThemeMode.dark,
      color: AppDarkThemeColor(),
      borderRadius: AppRadius(),
      border: AppBorder(),
      shadow: AppShadow(),
      filter: AppFilter(),
      space: AppSpace(),
      size: AppSize(),
      systemOverlayStyle: AppSystemUI.light,
      systemOverlayInverseStyle: AppSystemUI.dark,
      splashFactory: NoSplash.splashFactory,
    ),
    this.scrollBehavior = const AppScrollBehavior(),
    this.themeAnimationDuration = const Duration(milliseconds: 200),
    this.themeAnimationCurve = Curves.easeInOut,
    this.highContrastTheme,
    this.highContrastDarkTheme,
  });

  final AppThemeData lightTheme;
  final AppThemeData darkTheme;
  final ScrollBehavior scrollBehavior;
  final Duration themeAnimationDuration;
  final Curve themeAnimationCurve;
  final AppThemeData? highContrastTheme;
  final AppThemeData? highContrastDarkTheme;
}
