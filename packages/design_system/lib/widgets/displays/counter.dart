import 'package:design_system/lib.dart';

class AppCounter extends AppStatelessWidget {
  const AppCounter({
    super.key,
    super.size,
    required this.label,
    this.style = WidgetStyle.filled,
    this.color,
    this.border,
  });

  final String label;
  final WidgetStyle style;
  final Color? color;
  final Border? border;

  @override
  Widget build(BuildContext context) {
    return AppBadge(
      key: key,
      label: label,
      style: style,
      color: color,
      border: border,
      borderRadius: BorderRadius.circular(1000.0),
      size: size,
    );
  }
}
