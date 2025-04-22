import 'package:design_system/lib.dart';

class AppLinearLoadingIndicator extends AppStatelessWidget {
  const AppLinearLoadingIndicator({
    super.key,
    super.state = FullWidgetState.normal,
    super.size,
    this.borderRadius = BorderRadius.zero,
    this.width = 80,
    this.height = 2.0,
    this.color,
  });

  final Color? color;
  final double width;
  final double height;
  final BorderRadius borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: LinearProgressIndicator(
        minHeight: height,
        borderRadius: borderRadius,
        color: color ?? getTheme(context).color.brandPrimary,
        backgroundColor:
            (color ?? getTheme(context).color.brandPrimary).withValues(alpha: 0.2),
      ),
    );
  }
}
