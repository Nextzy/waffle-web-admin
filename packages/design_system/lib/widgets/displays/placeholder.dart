import 'package:design_system/lib.dart';

class AppPlaceholder extends AppStatelessWidget {
  const AppPlaceholder({
    super.key,
    this.height = 280,
    this.width = 280,
    required this.icon,
    this.iconSize,
    this.borderRadius,
    this.color,
  });

  final double height;
  final double width;
  final String icon;
  final double? iconSize;
  final BorderRadiusGeometry? borderRadius;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color ?? context.theme.color.bgSurface2,
        borderRadius: borderRadius ?? context.theme.borderRadius.md,
      ),
      child: Center(
        child: icon.toSvgIcon(
          colorFilter: ColorFilter.mode(
            context.theme.color.iconTertiary,
            BlendMode.srcIn,
          ),
          size: iconSize ?? 32,
        ),
      ),
    );
  }
}
