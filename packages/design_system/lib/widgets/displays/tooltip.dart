import 'package:design_system/lib.dart';

class AppTooltip extends AppStatelessWidget {
  const AppTooltip({
    super.key,
    required this.message,
    required this.child,
    this.padding,
    this.fontSize,
    this.textColor,
    this.backgroundColor,
  });

  final String message;
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final double? fontSize;
  final Color? textColor;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: message,
      padding:
          padding ?? const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: backgroundColor ?? context.theme.color.bgTooltip,
        borderRadius: context.theme.borderRadius.sm,
      ),
      textStyle: TextStyle(
        color: textColor ?? context.theme.color.textPrimaryOnColor,
        fontSize: fontSize ?? 12,
        fontWeight: FontWeight.w500,
      ),
      child: child,
    );
  }
}
