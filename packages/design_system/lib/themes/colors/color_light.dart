import 'package:design_system/lib.dart';

class AppLightThemeColor extends AppThemeColor {
  const AppLightThemeColor()
      : _brand = const BrandColor(),
        _gray = const StratumGrayColor(),
        _blue = const StratumBlueColor(),
        _red = const StratumRedColor(),
        _amber = const StratumAmberColor(),
        _green = const StratumGreenColor(),
        _violet = const StratumVioletColor(),
        _teal = const StratumTealColor();

  final PaletteColor _brand;
  final PaletteColor _gray;
  final PaletteColor _blue;
  final PaletteColor _red;
  final PaletteColor _amber;
  final PaletteColor _green;
  final PaletteColor _violet;
  final PaletteColor _teal;

  // static const gradient1 = Color.fromRGBO(245, 103, 86, 1);
  // static const gradient2 = Color.fromRGBO(247, 172, 42, 1);
  // static const gradient = LinearGradient(
  //     begin: Alignment(-1.0, -4.0),
  //     end: Alignment(1.0, 4.0),
  //     colors: [
  //       AppColors.gradient1,
  //       AppColors.gradient2,
  //     ]);

  @override
  TransparentColors get transparent => const TransparentColors();

  ///===================== BRAND COLOR =========================///
  @override
  Color get brandPrimary => _brand.c500;

  @override
  Color get brandPrimaryHover => _brand.c600;

  @override
  Color get brandPrimaryActive => _brand.c700;

  @override
  Color get brandPrimaryText => _brand.c500;

  @override
  Color get brandPrimaryIcon => _brand.c500;

  @override
  Color get brandPrimaryOnColor => Colors.white;

  @override
  PaletteColor get brandPrimaryPalette => _brand;

  @override
  Color get brandSecondary => throw UnimplementedError();

  @override
  Color get brandSecondaryHover => throw UnimplementedError();

  @override
  Color get brandSecondaryActive => throw UnimplementedError();

  @override
  Color get brandSecondaryText => throw UnimplementedError();

  @override
  Color get brandSecondaryIcon => throw UnimplementedError();

  @override
  Color get brandSecondaryOnColor => Colors.white;

  @override
  PaletteColor get brandSecondaryPalette => throw UnimplementedError();

  @override
  Color get brandTertiary => throw UnimplementedError();

  @override
  Color get brandTertiaryHover => throw UnimplementedError();

  @override
  Color get brandTertiaryActive => throw UnimplementedError();

  @override
  Color get brandTertiaryText => throw UnimplementedError();

  @override
  Color get brandTertiaryIcon => throw UnimplementedError();

  @override
  Color get brandTertiaryOnColor => Colors.white;

  @override
  PaletteColor get brandTertiaryPalette => throw UnimplementedError();

  ///===================== OVERLAY COLOR =========================///
  @override
  Color get overlayHover => transparent.black3;

  @override
  Color get overlayActive => transparent.black5;

  ///===================== TEXT COLOR =========================///
  @override
  Color get textPrimary => transparent.black80;

  @override
  Color get textPrimaryInverse => transparent.white;

  @override
  Color get textPrimaryOnColor => transparent.white;

  @override
  Color get textSecondary => transparent.black50;

  @override
  Color get textSecondaryInverse => transparent.white40;

  @override
  Color get textSecondaryOnColor => transparent.white40;

  @override
  Color get textTertiary => transparent.black25;

  @override
  Color get textTertiaryInverse => transparent.white25;

  @override
  Color get textTertiaryOnColor => transparent.white25;

  @override
  Color get textBlue => _blue.c600;

  @override
  Color get textNegative => _red.c600;

  @override
  Color get textWarning => _amber.c600;

  @override
  Color get textPositive => _green.c600;

  @override
  Color get textViolet => _violet.c600;

  @override
  Color get textTeal => _teal.c600;

  ///===================== ICON COLOR =========================///
  @override
  Color get iconPrimary => transparent.black80;

  @override
  Color get iconPrimaryOnColor => transparent.white;

  @override
  Color get iconPrimaryInverse => transparent.white;

  @override
  Color get iconSecondary => transparent.black50;

  @override
  Color get iconSecondaryInverse => transparent.white40;

  @override
  Color get iconSecondaryOnColor => transparent.white40;

  @override
  Color get iconTertiary => transparent.black25;

  @override
  Color get iconTertiaryInverse => transparent.white25;

  @override
  Color get iconTertiaryOnColor => transparent.white25;

  @override
  Color get iconHover => transparent.black35;

  @override
  Color get iconActive => transparent.black50;

  @override
  Color get iconBlue => _blue.c500;

  @override
  Color get iconNegative => _red.c500;

  @override
  Color get iconWarning => _amber.c500;

  @override
  Color get iconPositive => _green.c500;

  @override
  Color get iconViolet => _violet.c500;

  @override
  Color get iconTeal => _teal.c500;

  ///===================== BORDER COLOR =========================///
  @override
  Color get border => transparent.black10;

  @override
  Color get borderOnColor => transparent.white15;

  @override
  Color get borderInverse => transparent.white15;

  @override
  Color get borderHover => transparent.black25;

  @override
  Color get borderActive => transparent.black80;

  @override
  Color get borderContrast => transparent.black20;

  @override
  Color get borderWhite => transparent.white;

  @override
  Color get borderBlack => _gray.c900;

  @override
  Color get borderBlue => _blue.c500;

  @override
  Color get borderPositive => _green.c500;

  @override
  Color get borderWarning => _amber.c500;

  @override
  Color get borderNegative => _red.c500;

  @override
  Color get borderViolet => _violet.c500;

  @override
  Color get borderTeal => _teal.c500;

  @override
  Color get borderSubtleBlue => _blue.c300;

  @override
  Color get borderSubtlePositive => _green.c300;

  @override
  Color get borderSubtleWarning => _amber.c300;

  @override
  Color get borderSubtleNegative => _red.c300;

  @override
  Color get borderSubtleViolet => _violet.c300;

  @override
  Color get borderSubtleTeal => _teal.c300;

  ///===================== BUTTON COLOR =========================///
  @override
  Color get buttonPrimary => brandPrimary;

  @override
  Color get buttonPrimaryHover => brandPrimaryHover;

  @override
  Color get buttonPrimaryActive => brandPrimaryActive;

  @override
  Color get buttonSecondaryHover => transparent.black5;

  @override
  Color get buttonSecondaryActive => transparent.black10;

  @override
  Color get buttonShade => transparent.black5;

  @override
  Color get buttonShadeHover => transparent.black10;

  @override
  Color get buttonShadeActive => transparent.black15;

  @override
  Color get buttonDestructive => _red.c500;

  @override
  Color get buttonDestructiveHover => _red.c600;

  @override
  Color get buttonDestructiveActive => _red.c700;

  @override
  Color get buttonFilled => _gray.c900;

  @override
  Color get buttonFilledHover => _gray.c800;

  @override
  Color get buttonFilledActive => _gray.c700;

  ///===================== BACKGROUND COLOR =========================///
  @override
  Color get bg => transparent.white;

  @override
  Color get bgInverse => _gray.c800;

  @override
  Color get bgPrimary => brandPrimary;

  @override
  Color get bgGray => _gray.c400;

  @override
  Color get bgBlue => _blue.c500;

  @override
  Color get bgPositive => _green.c500;

  @override
  Color get bgWarning => _amber.c400;

  @override
  Color get bgNegative => _red.c500;

  @override
  Color get bgViolet => _violet.c500;

  @override
  Color get bgTeal => _teal.c500;

  @override
  Color get bgMutedGray => _gray.c200;

  @override
  Color get bgMutedBlue => _blue.c200;

  @override
  Color get bgMutedPositive => _green.c200;

  @override
  Color get bgMutedWarning => _amber.c200;

  @override
  Color get bgMutedNegative => _red.c200;

  @override
  Color get bgMutedViolet => _violet.c200;

  @override
  Color get bgMutedTeal => _teal.c200;

  @override
  Color get bgSubtleGray => _gray.c100;

  @override
  Color get bgSubtleBlue => _blue.c50;

  @override
  Color get bgSubtlePositive => _green.c50;

  @override
  Color get bgSubtleWarning => _amber.c50;

  @override
  Color get bgSubtleNegative => _red.c50;

  @override
  Color get bgSubtleViolet => _violet.c50;

  @override
  Color get bgSubtleTeal => _teal.c50;

  @override
  Color get bgSurface1 => transparent.black3;

  @override
  Color get bgSurface1Hover => transparent.black5;

  @override
  Color get bgSurface1Active => transparent.black10;

  @override
  Color get bgSurface2 => transparent.black5;

  @override
  Color get bgSurface2Hover => transparent.black10;

  @override
  Color get bgSurface2Active => transparent.black15;

  @override
  Color get bgSurface3 => transparent.black10;

  @override
  Color get bgSurface3Hover => transparent.black15;

  @override
  Color get bgSurface3Active => transparent.black20;

  @override
  Color get bgSurface4 => transparent.black20;

  @override
  Color get bgSurface4Hover => transparent.black25;

  @override
  Color get bgSurface4Active => transparent.black30;

  @override
  Color get bgInputOutlined => transparent.white;

  @override
  Color get bgInputShaded => transparent.black5;

  @override
  Color get bgInputDisabled => transparent.black3;

  @override
  Color get bgPopover => transparent.white;

  @override
  Color get bgPopoverInverse => _gray.c900;

  @override
  Color get bgTab => transparent.white;

  @override
  Color get bgTooltip => _gray.c800;

  @override
  Color get highlight => _brand.c900;

  @override
  Color get scrollbar => transparent.black20;
}
