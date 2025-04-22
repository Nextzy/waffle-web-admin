import 'package:design_system/lib.dart';

class AppCloseButton extends AppIconButton {
  AppCloseButton({
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
          icon: Assets.icon.closeRegular.keyName,
          style: AppButtonStyle.text,
        );
}
