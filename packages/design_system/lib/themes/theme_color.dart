// ignore_for_file: prefer_const_constructors
import 'package:design_system/lib.dart';

abstract class AppThemeColor {
  const AppThemeColor();
  ///===================== BRAND COLOR =========================///
  abstract final Color brandPrimary;
  abstract final Color brandPrimaryHover;
  abstract final Color brandPrimaryActive;
  abstract final Color brandPrimaryText;
  abstract final Color brandPrimaryIcon;
  abstract final Color brandPrimaryOnColor;
  abstract final PaletteColor brandPrimaryPalette;

  abstract final Color brandSecondary;
  abstract final Color brandSecondaryHover;
  abstract final Color brandSecondaryActive;
  abstract final Color brandSecondaryText;
  abstract final Color brandSecondaryIcon;
  abstract final Color brandSecondaryOnColor;
  abstract final PaletteColor brandSecondaryPalette;

  abstract final Color brandTertiary;
  abstract final Color brandTertiaryHover;
  abstract final Color brandTertiaryActive;
  abstract final Color brandTertiaryText;
  abstract final Color brandTertiaryIcon;
  abstract final Color brandTertiaryOnColor;
  abstract final PaletteColor brandTertiaryPalette;

  ///===================== OVERLAY COLOR =========================///
  abstract final Color overlayHover;
  abstract final Color overlayActive;

  ///===================== TEXT DEFAULT COLOR =================///
  abstract final Color textPrimary;
  abstract final Color textPrimaryInverse;
  abstract final Color textPrimaryOnColor;
  abstract final Color textSecondary;
  abstract final Color textSecondaryInverse;
  abstract final Color textSecondaryOnColor;
  abstract final Color textTertiary;
  abstract final Color textTertiaryInverse;
  abstract final Color textTertiaryOnColor;

  ///===================== TEXT COLOR =========================///
  abstract final Color textNegative;
  abstract final Color textWarning;
  abstract final Color textPositive;
  abstract final Color textBlue;
  abstract final Color textViolet;
  abstract final Color textTeal;

  ///===================== ICON DEFAULT COLOR =================///
  abstract final Color iconPrimary;
  abstract final Color iconPrimaryOnColor;
  abstract final Color iconPrimaryInverse;
  abstract final Color iconSecondary;
  abstract final Color iconSecondaryOnColor;
  abstract final Color iconSecondaryInverse;
  abstract final Color iconTertiary;
  abstract final Color iconTertiaryOnColor;
  abstract final Color iconTertiaryInverse;
  abstract final Color iconHover;
  abstract final Color iconActive;

  ///===================== ICON COLOR ==============================///
  abstract final Color iconBlue;
  abstract final Color iconNegative;
  abstract final Color iconWarning;
  abstract final Color iconPositive;
  abstract final Color iconViolet;
  abstract final Color iconTeal;

  ///===================== BORDER DEFAULT COLOR =====================///
  abstract final Color border;
  abstract final Color borderOnColor;
  abstract final Color borderInverse;
  abstract final Color borderHover;
  abstract final Color borderActive;
  abstract final Color borderContrast;

  ///===================== BORDER COLOR =========================///
  abstract final Color borderWhite;
  abstract final Color borderBlack;
  abstract final Color borderBlue;
  abstract final Color borderPositive;
  abstract final Color borderWarning;
  abstract final Color borderNegative;
  abstract final Color borderViolet;
  abstract final Color borderTeal;

  ///===================== BORDER SUBTLE COLOR ====================///
  abstract final Color borderSubtleBlue;
  abstract final Color borderSubtlePositive;
  abstract final Color borderSubtleWarning;
  abstract final Color borderSubtleNegative;
  abstract final Color borderSubtleViolet;
  abstract final Color borderSubtleTeal;

  abstract final TransparentColors transparent;

  ///===================== BUTTON PRIMARY COLOR =========================///
  abstract final Color buttonPrimary;
  abstract final Color buttonPrimaryHover;
  abstract final Color buttonPrimaryActive;

  ///===================== BUTTON SECONDARY COLOR =========================///
  abstract final Color buttonSecondaryHover;
  abstract final Color buttonSecondaryActive;

  ///===================== BUTTON SHADE COLOR =========================///
  abstract final Color buttonShade;
  abstract final Color buttonShadeHover;
  abstract final Color buttonShadeActive;

  ///===================== BUTTON DESTRUCTIVE COLOR =========================///
  abstract final Color buttonDestructive;
  abstract final Color buttonDestructiveHover;
  abstract final Color buttonDestructiveActive;

  ///===================== BUTTON FILLED COLOR =========================///
  abstract final Color buttonFilled;
  abstract final Color buttonFilledHover;
  abstract final Color buttonFilledActive;

  ///===================== BACKGROUND COLOR =========================///
  abstract final Color bg;
  abstract final Color bgInverse;
  abstract final Color bgPrimary;

  abstract final Color bgGray;
  abstract final Color bgBlue;
  abstract final Color bgPositive;
  abstract final Color bgWarning;
  abstract final Color bgNegative;
  abstract final Color bgViolet;
  abstract final Color bgTeal;

  abstract final Color bgMutedGray;
  abstract final Color bgMutedBlue;
  abstract final Color bgMutedPositive;
  abstract final Color bgMutedWarning;
  abstract final Color bgMutedNegative;
  abstract final Color bgMutedViolet;
  abstract final Color bgMutedTeal;

  abstract final Color bgSubtleGray;
  abstract final Color bgSubtleBlue;
  abstract final Color bgSubtlePositive;
  abstract final Color bgSubtleWarning;
  abstract final Color bgSubtleNegative;
  abstract final Color bgSubtleViolet;
  abstract final Color bgSubtleTeal;

  abstract final Color bgSurface1;
  abstract final Color bgSurface1Hover;
  abstract final Color bgSurface1Active;
  abstract final Color bgSurface2;
  abstract final Color bgSurface2Hover;
  abstract final Color bgSurface2Active;
  abstract final Color bgSurface3;
  abstract final Color bgSurface3Hover;
  abstract final Color bgSurface3Active;
  abstract final Color bgSurface4;
  abstract final Color bgSurface4Hover;
  abstract final Color bgSurface4Active;

  abstract final Color bgInputOutlined;
  abstract final Color bgInputShaded;
  abstract final Color bgInputDisabled;
  abstract final Color bgPopover;
  abstract final Color bgPopoverInverse;
  abstract final Color bgTab;
  abstract final Color bgTooltip;

  ///===================== MISC COLOR =========================///
  abstract final Color highlight;
  abstract final Color scrollbar;
}
