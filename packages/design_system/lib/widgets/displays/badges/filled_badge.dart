import 'package:design_system/lib.dart';

class AppFilledBadge extends AppBadge {
  const AppFilledBadge({
    super.key,
    super.size,
    required super.label,
    super.color,
    super.border,
    super.borderRadius,
  }) : super(style: WidgetStyle.filled);
}
