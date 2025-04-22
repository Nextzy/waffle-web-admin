// ignore_for_file: prefer_const_constructors_in_immutables
export 'close_button.dart';
export 'back_button.dart';
export 'filled_icon_button.dart';
export 'only_icon_button.dart';
export 'shaded_icon_button.dart';
export 'destructive_icon_button.dart';

import 'package:design_system/lib.dart';

class AppOutlineIconButton extends AppIconButton {
  AppOutlineIconButton({
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
  }) : super(style: AppButtonStyle.outline);
}
