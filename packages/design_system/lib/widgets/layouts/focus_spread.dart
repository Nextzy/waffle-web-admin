import 'package:design_system/lib.dart';

class FocusSpread extends StatelessWidget {
  const FocusSpread({
    super.key,
    required this.child,
    this.borderRadius,
    this.spread = 4.0,
    this.focus = false,
    this.color,
  });

  final Widget child;
  final BorderRadiusGeometry? borderRadius;
  final double spread;
  final bool focus;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: 100.milliseconds,
      decoration: BoxDecoration(
        color: color,
        borderRadius:
            BorderRadius.circular((borderRadius?.maxRadius ?? 0) + spread / 2),
        boxShadow: [
          if (focus) _createBoxShadow(context),
        ],
      ),
      child: child,
    );
  }

  BoxShadow _createBoxShadow(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;
    return BoxShadow(
      color: color ?? primaryColor.withValues(alpha: 0.20),
      spreadRadius: spread,
      blurRadius: 0,
    );
  }
}
