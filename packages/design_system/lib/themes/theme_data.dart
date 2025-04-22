// ignore_for_file: prefer_const_constructors
import 'package:design_system/lib.dart';

class AppThemeData {
  const AppThemeData({
    required this.defaultWidgetSize,
    required this.themeMode,
    required this.color,
    required this.borderRadius,
    required this.border,
    required this.shadow,
    required this.size,
    required this.filter,
    required this.systemOverlayStyle,
    required this.systemOverlayInverseStyle,
    required this.space,
    required this.splashFactory,
  });

  final WidgetSize defaultWidgetSize;
  final ThemeMode themeMode;
  final AppThemeColor color;
  final AppBorder border;
  final AppRadius borderRadius;
  final AppShadow shadow;
  final AppFilter filter;
  final AppSpace space;
  final AppSize size;
  final SystemUiOverlayStyle systemOverlayStyle;
  final SystemUiOverlayStyle systemOverlayInverseStyle;
  final InteractiveInkFeatureFactory splashFactory;

  ThemeData toThemeData() {
    final brightness =
        themeMode == ThemeMode.dark ? Brightness.dark : Brightness.light;

    return ThemeData(
      brightness: brightness,
      colorScheme: ColorScheme(
        brightness: brightness,
        primary: color.brandPrimary,
        onPrimary: color.brandPrimaryOnColor,
        inversePrimary: color.brandPrimaryOnColor,
        secondary: color.brandPrimary,
        onSecondary: color.brandPrimaryOnColor,
        error: color.iconNegative,
        onError: color.iconNegative,
        surface: color.bg,
        onSurface: color.bgInverse,
      ),
      splashFactory: splashFactory,
      primaryColorLight: color.brandPrimary.lighten(10),
      primaryColor: color.brandPrimary,
      primaryColorDark: color.brandPrimary.darken(10),
      hoverColor: color.overlayHover,
      focusColor: color.overlayHover,
      splashColor: color.overlayActive,
      highlightColor: color.brandPrimary,
      canvasColor: color.bg,
      dialogBackgroundColor: color.bgPopover,
      cardColor: color.bgPopover,
      scaffoldBackgroundColor: color.bg,
      fontFamily: FontFamily.primaryEnglish,
      fontFamilyFallback: [
        FontFamily.primaryEnglish,
        FontFamily.primaryThai,
      ],
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: color.textPrimary,
        selectionHandleColor: color.brandPrimary,
      ),
      dividerTheme: DividerThemeData(
        thickness: border.md.maxWidth,
        color: color.border,
      ),
      appBarTheme: AppBarTheme(
        systemOverlayStyle: systemOverlayStyle,
      ),
    );
  }
}
