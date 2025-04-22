import 'package:design_system/lib.dart';

class AppDarkThemeColor extends AppThemeColor {
  const AppDarkThemeColor()
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
  Color get overlayHover => transparent.white3;

  @override
  Color get overlayActive => transparent.white5;

  ///===================== TEXT COLOR =========================///
  @override
  Color get textPrimary => transparent.white;

  @override
  Color get textPrimaryInverse => transparent.black90;

  @override
  Color get textPrimaryOnColor => transparent.black90;

  @override
  Color get textSecondary => transparent.white60;

  @override
  Color get textSecondaryInverse => transparent.black40;

  @override
  Color get textSecondaryOnColor => transparent.black90;

  @override
  Color get textTertiary => transparent.white25;

  @override
  Color get textTertiaryInverse => transparent.black25;

  @override
  Color get textTertiaryOnColor => transparent.black90;

  @override
  Color get textBlue => _blue.c400;

  @override
  Color get textNegative => _red.c400;

  @override
  Color get textWarning => _amber.c400;

  @override
  Color get textPositive => _green.c400;

  @override
  Color get textViolet => _violet.c400;

  @override
  Color get textTeal => _teal.c400;

  ///===================== ICON COLOR =========================///
  @override
  Color get iconPrimary => transparent.white;

  @override
  Color get iconPrimaryInverse => transparent.black90;

  @override
  Color get iconPrimaryOnColor => transparent.white90;

  @override
  Color get iconSecondary => transparent.white60;

  @override
  Color get iconSecondaryInverse => transparent.black40;

  @override
  Color get iconSecondaryOnColor => transparent.white60;

  @override
  Color get iconTertiary => transparent.white25;

  @override
  Color get iconTertiaryInverse => transparent.black25;

  @override
  Color get iconTertiaryOnColor => transparent.white25;

  @override
  Color get iconHover => transparent.white35;

  @override
  Color get iconActive => transparent.white50;

  @override
  Color get iconBlue => _blue.c400;

  @override
  Color get iconNegative => _red.c400;

  @override
  Color get iconWarning => _amber.c400;

  @override
  Color get iconPositive => _green.c400;

  @override
  Color get iconViolet => _violet.c400;

  @override
  Color get iconTeal => _teal.c500;

  ///===================== BORDER COLOR =========================///
  @override
  Color get border => transparent.white15;

  @override
  Color get borderOnColor => transparent.white15;

  @override
  Color get borderInverse => transparent.black10;

  @override
  Color get borderHover => transparent.white20;

  @override
  Color get borderActive => transparent.white80;

  @override
  Color get borderContrast => transparent.white25;

  @override
  Color get borderWhite => _gray.c900;

  @override
  Color get borderBlack => _gray.c100;

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
  Color get borderSubtleBlue => _blue.c800;

  @override
  Color get borderSubtlePositive => _green.c800;

  @override
  Color get borderSubtleWarning => _amber.c800;

  @override
  Color get borderSubtleNegative => _red.c800;

  @override
  Color get borderSubtleViolet => _violet.c800;

  @override
  Color get borderSubtleTeal => _teal.c800;

  ///===================== BUTTON COLOR =========================///
  @override
  Color get buttonPrimary => brandPrimary;

  @override
  Color get buttonPrimaryHover => brandPrimaryHover;

  @override
  Color get buttonPrimaryActive => brandPrimaryActive;

  @override
  Color get buttonSecondaryHover => transparent.white5;

  @override
  Color get buttonSecondaryActive => transparent.white10;

  @override
  Color get buttonShade => transparent.white10;

  @override
  Color get buttonShadeHover => transparent.white15;

  @override
  Color get buttonShadeActive => transparent.white20;

  @override
  Color get buttonDestructive => _red.c600;

  @override
  Color get buttonDestructiveHover => _red.c700;

  @override
  Color get buttonDestructiveActive => _red.c800;

  @override
  Color get buttonFilled => _gray.c100;

  @override
  Color get buttonFilledHover => _gray.c200;

  @override
  Color get buttonFilledActive => _gray.c300;

  ///===================== BACKGROUND COLOR =========================///
  @override
  Color get bg => _gray.c950;

  @override
  Color get bgInverse => _gray.c200;

  @override
  Color get bgPrimary => brandPrimary;

  @override
  Color get bgGray => _gray.c500;

  @override
  Color get bgBlue => _blue.c600;

  @override
  Color get bgPositive => _green.c600;

  @override
  Color get bgWarning => _amber.c500;

  @override
  Color get bgNegative => _red.c600;

  @override
  Color get bgViolet => _violet.c600;

  @override
  Color get bgTeal => _teal.c600;

  @override
  Color get bgMutedGray => _gray.c700;

  @override
  Color get bgMutedBlue => _blue.c900;

  @override
  Color get bgMutedPositive => _green.c900;

  @override
  Color get bgMutedWarning => _amber.c900;

  @override
  Color get bgMutedNegative => _red.c900;

  @override
  Color get bgMutedViolet => _violet.c900;

  @override
  Color get bgMutedTeal => _teal.c900;

  @override
  Color get bgSubtleGray => _gray.c800;

  @override
  Color get bgSubtleBlue => _blue.c950;

  @override
  Color get bgSubtlePositive => _green.c950;

  @override
  Color get bgSubtleWarning => _amber.c950;

  @override
  Color get bgSubtleNegative => _red.c950;

  @override
  Color get bgSubtleViolet => _violet.c950;

  @override
  Color get bgSubtleTeal => _teal.c950;

  @override
  Color get bgSurface1 => transparent.white5;

  @override
  Color get bgSurface1Hover => transparent.white10;

  @override
  Color get bgSurface1Active => transparent.white15;

  @override
  Color get bgSurface2 => transparent.white10;

  @override
  Color get bgSurface2Hover => transparent.white15;

  @override
  Color get bgSurface2Active => transparent.white20;

  @override
  Color get bgSurface3 => transparent.white15;

  @override
  Color get bgSurface3Hover => transparent.white20;

  @override
  Color get bgSurface3Active => transparent.white25;

  @override
  Color get bgSurface4 => transparent.white25;

  @override
  Color get bgSurface4Hover => transparent.white30;

  @override
  Color get bgSurface4Active => transparent.white35;

  @override
  Color get bgInputOutlined => transparent.black5;

  @override
  Color get bgInputShaded => transparent.white5;

  @override
  Color get bgInputDisabled => transparent.white3;

  @override
  Color get bgPopover => _gray.c800;

  @override
  Color get bgPopoverInverse => transparent.white;

  @override
  Color get bgTab => transparent.white20;

  @override
  Color get bgTooltip => _gray.c700;

  @override
  Color get highlight => _brand.c900;

  @override
  Color get scrollbar => transparent.black20;
}
