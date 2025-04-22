import 'package:design_system/lib.dart';

class AppSquareAvatar extends AppStatelessWidget {
  const AppSquareAvatar({
    super.key,
    super.size,
    this.customSize,
    this.style = WidgetStyle.subtle,
    this.path,
    this.title,
    this.color,
    this.border,
    this.borderRadius,
    this.backgroundGradient,
    this.backgroundImage,
    this.statusRing,
    this.badge,
    this.statusDot,
    this.disabled = false,
    this.onPressed,
    this.onLongPress,
  });

  final WidgetStyle style;
  final double? customSize;
  final String? title;
  final String? path;
  final Color? color;
  final Border? border;
  final BorderRadius? borderRadius;
  final Gradient? backgroundGradient;
  final DecorationImage? backgroundImage;
  final bool disabled;
  final StatusRing? statusRing;
  final Badge? badge;
  final StatusDot? statusDot;
  final GestureTapCallback? onPressed;
  final GestureLongPressCallback? onLongPress;

  @override
  Widget build(BuildContext context) {
    final theme = getTheme(context);
    return AppAvatar(
      key: key,
      size: size,
      customSize: customSize,
      style: style,
      title: title,
      path: path,
      color: color,
      border: border ?? theme.border.md.copy(color: theme.color.border),
      borderRadius: borderRadius ?? theme.borderRadius.md,
      backgroundGradient: backgroundGradient,
      backgroundImage: backgroundImage,
      disabled: disabled,
      statusRing: statusRing,
      badge: badge,
      statusDot: statusDot,
      onPressed: onPressed,
      onLongPress: onLongPress,
    );
  }
}
