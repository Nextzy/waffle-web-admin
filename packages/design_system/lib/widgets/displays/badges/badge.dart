import 'package:design_system/lib.dart';

class AppBadge extends AppStatelessWidget {
  const AppBadge({
    super.key,
    super.size,
    required this.label,
    this.style = WidgetStyle.filled,
    this.color,
    this.border,
    this.borderRadius,
  });

  final String label;
  final WidgetStyle style;
  final Color? color;
  final Border? border;
  final BorderRadius? borderRadius;

  EdgeInsetsGeometry get padding => switch (size) {
        (WidgetSize.xxs || WidgetSize.xs || WidgetSize.sm) =>
          SpaceDirectional.insetSymmetric(horizontal: 2.0, vertical: 0.0),
        WidgetSize.md =>
          SpaceDirectional.insetSymmetric(horizontal: 4.0, vertical: 0.0),
        (WidgetSize.lg || WidgetSize.xl || WidgetSize.xxl) =>
          SpaceDirectional.insetSymmetric(horizontal: 8.0, vertical: 4.0),
      };

  AppTextStyleBuilder get textStyleBuilder => switch (size) {
        (WidgetSize.xxs || WidgetSize.xs || WidgetSize.sm) =>
          AppTextStyleBuilder.ui.s12.medium,
        WidgetSize.md => AppTextStyleBuilder.ui.s14.medium,
        (WidgetSize.lg || WidgetSize.xl || WidgetSize.xxl) =>
          AppTextStyleBuilder.ui.s14.medium.colorPrimary,
      };

  @override
  Widget build(BuildContext context) => RowLayout(
        mainAxisSize: MainAxisSize.min,
        padding: padding,
        border: context.theme.border.md.copy(
            color:
                (color ?? context.theme.color.brandPrimary).withValues(alpha: 0.2)),
        backgroundColor: switch (style) {
          WidgetStyle.filled => color ?? context.theme.color.brandPrimary,
          WidgetStyle.subtle =>
            (color ?? context.theme.color.brandPrimary).withValues(alpha: 0.2),
          WidgetStyle.outlined => Colors.transparent,
          _ => color ?? context.theme.color.brandPrimary,
        },
        children: [
          AppText(
            label,
            style: textStyleBuilder
                .color(switch (style) {
                  WidgetStyle.filled => context.theme.color.textPrimaryOnColor,
                  WidgetStyle.subtle =>
                    color ?? context.theme.color.brandPrimary,
                  WidgetStyle.outlined =>
                    color ?? context.theme.color.brandPrimary,
                  _ => context.theme.color.textPrimaryOnColor,
                })
                .build(context),
          ),
        ],
      );
}
