import 'package:design_system/lib.dart';

class AppSubtleBadge extends AppBadge {
  const AppSubtleBadge({
    super.key,
    super.size,
    required super.label,
    super.color,
    super.border,
    super.borderRadius,
  }) : super(style: WidgetStyle.subtle);
}
