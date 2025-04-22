// ignore_for_file: prefer_const_constructors_in_immutables
export 'close_button.dart';
export 'back_button.dart';

import 'package:design_system/lib.dart';

class AppDestructiveIconButton extends AppIconButton {
  AppDestructiveIconButton({
    super.key,
    super.size,
    super.themeMode,
    required super.icon,
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
  }) : super(style: AppButtonStyle.destructive);
}
