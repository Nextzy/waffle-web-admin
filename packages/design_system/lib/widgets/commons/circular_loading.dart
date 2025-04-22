import 'package:design_system/lib.dart';

class AppCircularLoading extends AppStatelessWidget {
  const AppCircularLoading({
    super.key,
    super.state = FullWidgetState.normal,
    super.size,
    this.customSize,
    this.color,
  });

  double get progressSize => switch (size) {
        WidgetSize.xxs => 16,
        WidgetSize.xs => 24,
        WidgetSize.sm => 32,
        WidgetSize.md => 48,
        WidgetSize.lg => 56,
        WidgetSize.xl => 64,
        WidgetSize.xxl => 72,
      };

  final Color? color;
  final double? customSize;

  @override
  Widget build(BuildContext context) {
    final theme = getTheme(context);

    return LoadingAnimationWidget.threeArchedCircle(
      size: customSize ?? progressSize,
      color: color ?? theme.color.brandPrimary,
    );
  }
}
