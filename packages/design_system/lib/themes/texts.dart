import 'package:design_system/lib.dart';

class AppTextStyleBuilder {
  FontType _type = FontType.ui;
  FontSize _size = FontSize.s16;
  FontWeight _weight = FontWeight.w400;
  FontColor _color = FontColor.primary;
  Color? _customColor;
  double? _customSize;
  TextDecoration? _decoration;
  List<BoxShadow>? _shadow;
  FontStyle? _style = FontStyle.normal;

  ///========================= TYPE =========================///
  static AppTextStyleBuilder get header =>
      AppTextStyleBuilder().._type = FontType.header;

  static AppTextStyleBuilder get header1 => AppTextStyleBuilder()
    .._type = FontType.header
    ..s36;

  static AppTextStyleBuilder get header2 => AppTextStyleBuilder()
    .._type = FontType.header
    ..s24;

  static AppTextStyleBuilder get header3 => AppTextStyleBuilder()
    .._type = FontType.header
    ..s18;

  static AppTextStyleBuilder get header4 => AppTextStyleBuilder()
    .._type = FontType.header
    ..s16;

  static AppTextStyleBuilder get header5 => AppTextStyleBuilder()
    .._type = FontType.header
    ..s14;

  static AppTextStyleBuilder get ui =>
      AppTextStyleBuilder().._type = FontType.ui;

  static AppTextStyleBuilder get code =>
      AppTextStyleBuilder().._type = FontType.code;

  static AppTextStyleBuilder get runningText =>
      AppTextStyleBuilder().._type = FontType.running;

  static AppTextStyleBuilder get table =>
      AppTextStyleBuilder().._type = FontType.table;

  ///========================= SIZE =========================///
  AppTextStyleBuilder get s10 => this.._size = FontSize.s10;

  AppTextStyleBuilder get s12 => this.._size = FontSize.s12;

  AppTextStyleBuilder get s14 => this.._size = FontSize.s14;

  AppTextStyleBuilder get s16 => this.._size = FontSize.s16;

  AppTextStyleBuilder get s18 => this.._size = FontSize.s18;

  AppTextStyleBuilder get s24 => this.._size = FontSize.s24;

  AppTextStyleBuilder get s36 => this.._size = FontSize.s36;

  AppTextStyleBuilder size(double size) {
    _size = FontSize.custom;
    return this.._customSize = size;
  }

  ///========================= STYLE =========================///
  AppTextStyleBuilder underline(bool enabled) =>
      this.._decoration = enabled ? TextDecoration.underline : null;

  AppTextStyleBuilder shadow(List<BoxShadow> shadow) => this.._shadow = shadow;

  ///========================= WEIGHT =========================///
  AppTextStyleBuilder get thin => this.._weight = FontWeight.w200;

  AppTextStyleBuilder get light => this.._weight = FontWeight.w300;

  AppTextStyleBuilder get regular => this.._weight = FontWeight.w400;

  AppTextStyleBuilder get medium => this.._weight = FontWeight.w500;

  AppTextStyleBuilder get semiBold => this.._weight = FontWeight.w600;

  AppTextStyleBuilder get bold => this.._weight = FontWeight.w700;

  AppTextStyleBuilder weight(FontWeight weight) => this.._weight = weight;

  AppTextStyleBuilder get italic => this.._style = FontStyle.italic;

  ///========================= COLOR =========================///
  AppTextStyleBuilder get colorBrandPrimary =>
      this.._color = FontColor.brandPrimary;

  AppTextStyleBuilder get colorBrandSecondary =>
      this.._color = FontColor.brandSecondary;

  AppTextStyleBuilder get colorBrandTertiary =>
      this.._color = FontColor.brandTertiary;

  AppTextStyleBuilder get colorPrimary => this.._color = FontColor.primary;

  AppTextStyleBuilder get colorPrimaryOnColor =>
      this.._color = FontColor.primaryOnColor;

  AppTextStyleBuilder get colorPrimaryInverse =>
      this.._color = FontColor.primaryInverse;

  AppTextStyleBuilder get colorSecondary => this.._color = FontColor.secondary;

  AppTextStyleBuilder get colorSecondaryInverse =>
      this.._color = FontColor.secondaryInverse;

  AppTextStyleBuilder get colorSecondaryOnColor =>
      this.._color = FontColor.secondaryOnColor;

  AppTextStyleBuilder get colorTertiary => this.._color = FontColor.tertiary;

  AppTextStyleBuilder get colorTertiaryInverse =>
      this.._color = FontColor.tertiaryInverse;

  AppTextStyleBuilder get colorTertiaryOnColor =>
      this.._color = FontColor.tertiaryOnColor;

  AppTextStyleBuilder color(Color? color) => this.._customColor = color;

  TextStyle build(BuildContext context) {
    Locale language;
    try {
      language = Localizations.localeOf(context);
    } catch (e) {
      Log.w('Cannot load Localizations.localeOf(context)');
      language = View.of(context).platformDispatcher.locale;
    }
    final increaseSize = _increaseSize(context);
    final double size;
    final double height;
    final double letterSpace;
    Color color;
    switch (_size) {
      case FontSize.s10:
        size = 10.0;
        switch (_type) {
          case FontType.header:
            height = 14.0;
            letterSpace = (1.8 / 100) * size;
            break;
          case FontType.running:
            height = 14.0;
            letterSpace = 0;
            break;
          case FontType.code:
            height = 14.0;
            letterSpace = 0;
            break;
          case FontType.ui:
            height = 14.0;
            letterSpace = 0;
            break;
          case FontType.table:
            height = 14.0;
            letterSpace = 0;
            break;
        }
        break;
      case FontSize.s12:
        size = 12.0;
        switch (_type) {
          case FontType.header:
            height = 16.0;
            letterSpace = (1.8 / 100) * size;
            break;
          case FontType.running:
            height = 16.0;
            letterSpace = 0;
            break;
          case FontType.code:
            height = 16.0;
            letterSpace = 0;
            break;
          case FontType.ui:
            height = 16.0;
            letterSpace = 0;
            break;
          case FontType.table:
            height = 16.0;
            letterSpace = 0;
            break;
        }
        break;
      case FontSize.s14:
        size = 14.0;
        switch (_type) {
          case FontType.header:
            height = 24.0;
            letterSpace = (0.6 / 100) * size;
            break;
          case FontType.running:
            height = 20.0;
            letterSpace = 0;
            break;
          case FontType.code:
            height = 24.0;
            letterSpace = 0;
            break;
          case FontType.ui:
            height = 24;
            letterSpace = 0;
            break;
          case FontType.table:
            height = 24;
            letterSpace = 0;
            break;
        }
        break;
      case FontSize.s16:
        size = 16.0;
        switch (_type) {
          case FontType.header:
            height = 24.0;
            letterSpace = (0.6 / 100) * size;
            break;
          case FontType.running:
            height = 24.0;
            letterSpace = 0;
            break;
          case FontType.code:
            height = 24.0;
            letterSpace = 0;
            break;
          case FontType.ui:
            height = 24;
            letterSpace = 0;
            break;
          case FontType.table:
            height = 24;
            letterSpace = 0;
            break;
        }
        break;
      case FontSize.s18:
        size = 18.0;
        switch (_type) {
          case FontType.header:
            height = 24.0;
            letterSpace = -(1.4 / 100) * size;
            break;
          case FontType.running:
            height = 28.0;
            letterSpace = 0;
            break;
          case FontType.code:
            height = 24.0;
            letterSpace = 0;
            break;
          case FontType.ui:
            height = 24;
            letterSpace = 0;
            break;
          case FontType.table:
            height = 24;
            letterSpace = 0;
            break;
        }
        break;
      case FontSize.s24:
        size = 24.0;
        switch (_type) {
          case FontType.header:
            height = 32.0;
            letterSpace = -(1.9 / 100) * size;
            break;
          case FontType.running:
            height = 32.0;
            letterSpace = 0;
            break;
          case FontType.code:
            height = 32.0;
            letterSpace = 0;
            break;
          case FontType.ui:
            height = 32;
            letterSpace = 0;
            break;
          case FontType.table:
            height = 32.0;
            letterSpace = 0;
            break;
        }
        break;
      case FontSize.s36:
        size = 36.0;
        switch (_type) {
          case FontType.header:
            height = 48.0;
            letterSpace = -(2.2 / 100) * size;
            break;
          case FontType.running:
            height = 48.0;
            letterSpace = 0;
            break;
          case FontType.code:
            height = 48.0;
            letterSpace = 0;
            break;
          case FontType.ui:
            height = 48;
            letterSpace = 0;
            break;
          case FontType.table:
            height = 48.0;
            letterSpace = 0;
            break;
        }
        break;
      case FontSize.custom:
        size = _customSize ?? 16.0;
        height = size * 1.25;
        letterSpace = 0;
        break;
    }

    switch (_color) {
      case FontColor.brandPrimary:
        color = context.theme.color.brandPrimaryText;
        break;
      case FontColor.brandSecondary:
        color = context.theme.color.brandSecondaryText;
        break;
      case FontColor.brandTertiary:
        color = context.theme.color.brandTertiaryText;
        break;
      case FontColor.primary:
        color = context.theme.color.textPrimary;
        break;
      case FontColor.primaryOnColor:
        color = context.theme.color.textPrimaryOnColor;
        break;
      case FontColor.primaryInverse:
        color = context.theme.color.textPrimaryInverse;
        break;
      case FontColor.secondary:
        color = context.theme.color.textSecondary;
        break;
      case FontColor.secondaryInverse:
        color = context.theme.color.textSecondaryInverse;
        break;
      case FontColor.secondaryOnColor:
        color = context.theme.color.textSecondaryOnColor;
        break;
      case FontColor.tertiary:
        color = context.theme.color.textTertiary;
        break;
      case FontColor.tertiaryInverse:
        color = context.theme.color.textTertiaryInverse;
        break;
      case FontColor.tertiaryOnColor:
        color = context.theme.color.textTertiaryOnColor;
        break;
    }

    return TextStyle(
      fontFamily: _getFontType(language, _type),
      fontWeight: _weight,
      fontStyle: _style,
      fontSize: size + increaseSize,
      letterSpacing: letterSpace,
      decoration: _decoration,
      shadows: _shadow,
      foreground: Paint()
        ..style = PaintingStyle.fill
        ..color = _customColor ?? color,
      height: height / size,
      leadingDistribution: TextLeadingDistribution.even,
    );
  }

  ///========================= PRIVATE METHOD =========================///
  String _getFontType(Locale locale, FontType family) {
    switch (family) {
      case FontType.header:
        return 'th'.contains(locale.languageCode.toLowerCase())
            ? FontFamily.primaryThai
            : FontFamily.primaryEnglish;
      case FontType.running:
        return 'th'.contains(locale.languageCode.toLowerCase())
            ? FontFamily.primaryThai
            : FontFamily.primaryEnglish;
      case FontType.code:
        return 'th'.contains(locale.languageCode.toLowerCase())
            ? FontFamily.primaryThai
            : FontFamily.primaryEnglish;
      case FontType.ui:
        return 'th'.contains(locale.languageCode.toLowerCase())
            ? FontFamily.primaryThai
            : FontFamily.primaryEnglish;
      case FontType.table:
        return 'th'.contains(locale.languageCode.toLowerCase())
            ? FontFamily.primaryThai
            : FontFamily.primaryEnglish;
    }
  }

  double _increaseSize(
    BuildContext context, {
    double? tablet,
    double? desktop,
  }) {
    Breakpoint breakpoint;
    try {
      breakpoint = ResponsiveBreakpoints.of(context).breakpoint;
    } catch (e) {
      Log.w('Cannot load ResponsiveBreakpoints.of(context).breakpoint');
      breakpoint = AppBreakpoint.mobilePortrait;
    }

    if (breakpoint == AppBreakpoint.mobilePortrait) {
      return 0.0;
    } else if (breakpoint == AppBreakpoint.mobileLandscape) {
      return 0.0;
    } else if (breakpoint == AppBreakpoint.tablet) {
      if (tablet != null) return tablet;
      return 0.5;
    } else if (breakpoint == AppBreakpoint.desktop) {
      if (desktop != null) return desktop;
      return 1;
    } else if (breakpoint == AppBreakpoint.desktopLg) {
      if (desktop != null) return desktop;
      return 1;
    }

    return 0.0;
  }
}
