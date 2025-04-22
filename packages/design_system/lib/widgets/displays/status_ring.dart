import 'package:design_system/lib.dart';

class StatusRing extends AppStatelessWidget {
  const StatusRing({super.key, required this.child, this.color});

  final Widget child;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return ContainerLayout(
      borderRadius: BorderRadius.circular(1000),
      border: context.theme.border.lg.copy(
          color: color ?? context.theme.color.bgPositive,
          strokeAlign: BorderSide.strokeAlignOutside,
          width: 2),
      child: child,
    );
  }
}
