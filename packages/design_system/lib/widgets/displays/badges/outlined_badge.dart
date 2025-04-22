import 'package:design_system/lib.dart';

class AppOutlinedBadge extends AppBadge {
  const AppOutlinedBadge({
    super.key,
    super.size,
    required super.label,
    super.color,
    super.border,
    super.borderRadius,
  }) : super(style: WidgetStyle.outlined);
}
