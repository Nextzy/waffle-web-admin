  
import 'package:design_system/lib.dart';

class AppFilledButton extends AppButton {
  const AppFilledButton({
    super.key,
    super.size,
    super.themeMode,
    required super.text,
    super.width,
    super.height,
    super.color,
    super.startIcon,
    super.endIcon,
    super.startChild,
    super.endChild,
    super.border,
    super.borderRadius,
    super.badge,
    super.expanded = false,
    super.disabled = false,
    super.loading = false,
    super.onPress,
    super.onLongPress,
    super.onHover,
    super.onFocusChange,
  }) : super(style: AppButtonStyle.filled);
}
