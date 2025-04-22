import 'package:design_system/lib.dart';

class AppBackButton extends AppIconButton {
  AppBackButton({
    super.key,
    super.size,
    super.themeMode,
    super.customIconSize,
    super.padding,
    super.color,
    super.border,
    super.borderRadius,
    super.disabled = false,
    super.loading = false,
    super.onPress,
    super.onLongPress,
    super.onHover,
    super.onFocusChange,
  }) : super(
          icon: Assets.icon.arrowNarrowLeft.keyName,
          style: AppButtonStyle.text,
        );
}
