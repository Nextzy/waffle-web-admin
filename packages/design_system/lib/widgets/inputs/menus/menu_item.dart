import 'package:design_system/lib.dart';

class AppMenuItem extends AppStatefulWidget {
  const AppMenuItem({
    super.key,
    super.size,
    this.icon,
    this.avatar,
    this.label,
    this.padding,
    this.description,
    this.badge,
    this.hasSubMenu = false,
    this.disabled = false,
    this.onPress,
    this.onLongPress,
    this.onHover,
    this.onFocusChange,
  });

  final String? icon;
  final Widget? avatar;
  final String? label;
  final String? description;
  final Widget? badge;
  final bool hasSubMenu;
  final bool disabled;
  final EdgeInsetsGeometry? padding;

  ///============= CALLBACK METHOD =============///
  final VoidCallback? onPress;
  final VoidCallback? onLongPress;
  final ValueChanged<bool>? onHover;
  final ValueChanged<bool>? onFocusChange;

  @override
  AppState<AppMenuItem> createState() => _AppMenuItemState();
}

class _AppMenuItemState extends AppState<AppMenuItem> {
  EdgeInsetsGeometry get padding => switch (widgetSize) {
        (WidgetSize.xxs || WidgetSize.xs || WidgetSize.sm || WidgetSize.md) =>
          SpaceDirectional.insetAll(4),
        (WidgetSize.lg || WidgetSize.xl || WidgetSize.xxl) =>
          SpaceDirectional.insetAll(8),
      };

  double get iconSize => switch (widgetSize) {
        (WidgetSize.xxs || WidgetSize.xs || WidgetSize.sm) => 16.0,
        (WidgetSize.md || WidgetSize.lg || WidgetSize.xl || WidgetSize.xxl) =>
          24.0,
      };

  TextStyle get titleTextStyle => switch (widgetSize) {
        (WidgetSize.xxs || WidgetSize.xs || WidgetSize.sm) =>
          AppTextStyleBuilder.ui.s12.regular.colorPrimary.build(context),
        (WidgetSize.md || WidgetSize.lg || WidgetSize.xl || WidgetSize.xxl) =>
          AppTextStyleBuilder.ui.s14.regular.colorPrimary.build(context),
      };

  @override
  Widget build(BuildContext context) {
    return GestureRowLayout(
      padding: widget.padding ?? padding,
      gap: 4.0,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      disabled: widget.disabled,
      onPress: widget.onPress,
      onLongPress: widget.onLongPress,
      onFocusChange: widget.onFocusChange,
      onHover: widget.onHover,
      children: [
        if (widget.icon != null)
          widget.icon.toSvgIcon(
            size: iconSize,
            color: theme.color.iconPrimary,
          ),
        if (widget.avatar != null) widget.avatar!,
        Expanded(
          child: ColumnLayout(
            padding: SpaceDirectional.insetStart4,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              RowLayout(
                gap: 8.0,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (widget.label.isNotNullOrBlank)
                    Expanded(
                      child: AppText(
                        widget.label,
                        style: titleTextStyle,
                      ),
                    ),
                  if (widget.badge != null) widget.badge!,
                  if (widget.hasSubMenu)
                    Assets.icon.caretRightLight.svgIcon(
                      color: theme.color.iconPrimary,
                      size: 16.0,
                    ),
                ],
              ),
              if (widget.description.isNotNullOrBlank)
                AppText(
                  widget.description,
                  style: AppTextStyleBuilder.ui.s12.regular.colorSecondary
                      .build(context),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
