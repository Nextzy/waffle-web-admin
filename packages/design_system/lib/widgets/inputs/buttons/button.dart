export 'outline_button.dart';
export 'text_button.dart';
export 'destructive_button.dart';
export 'shaded_button.dart';
export 'filled_button.dart';

import 'package:design_system/lib.dart';

enum AppButtonStyle { filledBand, filled, outline, text, shaded, destructive }

class AppButton extends AppStatefulWidget {
  const AppButton({
    super.key,
    super.size,
    super.themeMode,
    this.style = AppButtonStyle.filledBand,
    required this.text,
    this.width,
    this.height,
    this.color,
    this.startIcon,
    this.endIcon,
    this.startChild,
    this.endChild,
    this.border,
    this.borderRadius,
    this.badge,
    this.expanded = false,
    this.disabled = false,
    this.loading = false,
    this.onPress,
    this.onLongPress,
    this.onHover,
    this.onFocusChange,
  });

  final String text;
  final AppButtonStyle style;
  final double? width;
  final double? height;
  final Color? color;
  final Widget? startChild;
  final Widget? endChild;
  final Border? border;
  final BorderRadius? borderRadius;
  final Widget? badge;
  final String? startIcon;
  final String? endIcon;
  final bool expanded;
  final bool loading;
  final bool disabled;

  ///============= CALLBACK METHOD =============///
  final VoidCallback? onPress;
  final VoidCallback? onLongPress;
  final ValueChanged<bool>? onHover;
  final ValueChanged<bool>? onFocusChange;

  @override
  AppState<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends AppState<AppButton> {
  EdgeInsetsGeometry get padding => switch (widgetSize) {
        (WidgetSize.xxs || WidgetSize.xs || WidgetSize.sm) =>
          SpaceDirectional.insetSymmetric(horizontal: 6.0, vertical: 4.0),
        WidgetSize.md =>
          SpaceDirectional.insetSymmetric(horizontal: 8.0, vertical: 4.0),
        (WidgetSize.lg || WidgetSize.xl || WidgetSize.xxl) =>
          SpaceDirectional.insetSymmetric(horizontal: 10.0, vertical: 8.0),
      };

  EdgeInsetsGeometry get paddingText => switch (widgetSize) {
        (WidgetSize.xxs || WidgetSize.xs || WidgetSize.sm) =>
          SpaceDirectional.insetHorizontal4,
        WidgetSize.md => SpaceDirectional.insetHorizontal6,
        (WidgetSize.lg || WidgetSize.xl || WidgetSize.xxl) =>
          SpaceDirectional.insetHorizontal8,
      };

  double get gap => switch (widgetSize) {
        WidgetSize.xxs => 4,
        WidgetSize.xs => 4,
        WidgetSize.sm => 4,
        WidgetSize.md => 6,
        WidgetSize.lg => 8,
        WidgetSize.xl => 8,
        WidgetSize.xxl => 8,
      };

  double get iconSize => switch (widgetSize) {
        WidgetSize.xxs => 16,
        WidgetSize.xs => 16,
        WidgetSize.sm => 16,
        WidgetSize.md => 20,
        WidgetSize.lg => 24,
        WidgetSize.xl => 24,
        WidgetSize.xxl => 24,
      };

  BorderRadius get borderRadius => switch (widgetSize) {
        WidgetSize.xxs => theme.borderRadius.sm,
        WidgetSize.xs => theme.borderRadius.sm,
        WidgetSize.sm => theme.borderRadius.sm,
        WidgetSize.md => theme.borderRadius.md,
        WidgetSize.lg => theme.borderRadius.md,
        WidgetSize.xl => theme.borderRadius.md,
        WidgetSize.xxl => theme.borderRadius.md,
      };

  Color get textColor => switch (widget.style) {
        AppButtonStyle.filledBand => theme.color.textPrimaryOnColor,
        AppButtonStyle.filled => theme.color.textPrimaryOnColor,
        AppButtonStyle.outline => widget.color ?? theme.color.textPrimary,
        AppButtonStyle.text => widget.color ?? theme.color.textPrimary,
        AppButtonStyle.shaded => widget.color ?? theme.color.textPrimary,
        AppButtonStyle.destructive => theme.color.textPrimaryOnColor
      };

  Color get iconColor => switch (widget.style) {
        AppButtonStyle.filledBand => theme.color.iconPrimaryOnColor,
        AppButtonStyle.filled => theme.color.iconPrimaryOnColor,
        AppButtonStyle.outline => widget.color ?? theme.color.iconPrimary,
        AppButtonStyle.text => widget.color ?? theme.color.iconPrimary,
        AppButtonStyle.shaded => widget.color ?? theme.color.iconPrimary,
        AppButtonStyle.destructive => theme.color.iconPrimaryOnColor
      };

  Color get backgroundColor => switch (widget.style) {
        AppButtonStyle.filledBand => widget.loading == false
            ? theme.color.buttonPrimary
            : theme.color.buttonShade,
        AppButtonStyle.filled => widget.loading == false
            ? theme.color.buttonFilled
            : theme.color.buttonShade,
        AppButtonStyle.outline => Colors.transparent,
        AppButtonStyle.text => Colors.transparent,
        AppButtonStyle.shaded => theme.color.buttonShade,
        AppButtonStyle.destructive => widget.loading == false
            ? theme.color.buttonDestructive
            : theme.color.bgSubtleNegative
      };

  Color get dividerColor => switch (widget.style) {
        AppButtonStyle.filledBand => theme.color.borderOnColor,
        AppButtonStyle.filled => theme.color.borderInverse,
        AppButtonStyle.outline => widget.color ?? theme.color.border,
        AppButtonStyle.text => widget.color ?? theme.color.border,
        AppButtonStyle.shaded => widget.color ?? theme.color.border,
        AppButtonStyle.destructive => theme.color.borderOnColor
      };

  Border? get border => switch (widget.style) {
        AppButtonStyle.filledBand => null,
        AppButtonStyle.filled => null,
        AppButtonStyle.outline =>
          widget.border ?? theme.border.md.copy(color: theme.color.border),
        AppButtonStyle.text => null,
        AppButtonStyle.shaded => null,
        AppButtonStyle.destructive => null
      };

  double get dividerIntent => switch (widget.style) {
        AppButtonStyle.filledBand => switch (widgetSize) {
            WidgetSize.xxs => 5.0,
            WidgetSize.xs => 5.0,
            WidgetSize.sm => 5.0,
            WidgetSize.md => 8.0,
            WidgetSize.lg => 8.0,
            WidgetSize.xl => 8.0,
            WidgetSize.xxl => 8.0,
          },
        AppButtonStyle.filled => switch (widgetSize) {
            WidgetSize.xxs => 5.0,
            WidgetSize.xs => 5.0,
            WidgetSize.sm => 5.0,
            WidgetSize.md => 8.0,
            WidgetSize.lg => 8.0,
            WidgetSize.xl => 8.0,
            WidgetSize.xxl => 8.0,
          },
        AppButtonStyle.outline => 0.0,
        AppButtonStyle.text => switch (widgetSize) {
            WidgetSize.xxs => 5.0,
            WidgetSize.xs => 5.0,
            WidgetSize.sm => 5.0,
            WidgetSize.md => 8.0,
            WidgetSize.lg => 8.0,
            WidgetSize.xl => 8.0,
            WidgetSize.xxl => 8.0,
          },
        AppButtonStyle.shaded => switch (widgetSize) {
            WidgetSize.xxs => 5.0,
            WidgetSize.xs => 5.0,
            WidgetSize.sm => 5.0,
            WidgetSize.md => 8.0,
            WidgetSize.lg => 8.0,
            WidgetSize.xl => 8.0,
            WidgetSize.xxl => 8.0,
          },
        AppButtonStyle.destructive => switch (widgetSize) {
            WidgetSize.xxs => 5.0,
            WidgetSize.xs => 5.0,
            WidgetSize.sm => 5.0,
            WidgetSize.md => 8.0,
            WidgetSize.lg => 8.0,
            WidgetSize.xl => 8.0,
            WidgetSize.xxl => 8.0,
          },
      };

  @override
  Widget build(BuildContext context) {
    return GestureRowLayout(
      key: key,
      minWidth: 70.0,
      width: widget.width,
      height: widget.height,
      border: border,
      borderRadius: widget.borderRadius ?? borderRadius,
      opacity: widget.disabled ? 0.5 : null,
      backgroundColor: backgroundColor,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: widget.expanded ? MainAxisSize.max : MainAxisSize.min,
      crossAxisIntrinsic: true,
      disabled: widget.loading || widget.disabled,
      mouseCursor: SystemMouseCursors.click,
      onPress: widget.onPress,
      onLongPress: widget.onLongPress,
      onHover: widget.onHover,
      onFocusChange: widget.onFocusChange,
      tapFocus: false,
      children: [
        if (widget.startChild != null) widget.startChild!,
        if (widget.startChild != null)
          VerticalDivider(
            width: theme.border.md.maxWidth,
            indent: dividerIntent,
            endIndent: dividerIntent,
            thickness: theme.border.md.maxWidth,
            color: dividerColor,
          ),
        Stack(
          children: [
            Opacity(
              opacity: widget.loading ? 0.0 : 1.0,
              child: RowLayout(
                padding: padding,
                gap: gap,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (widget.startIcon != null)
                    widget.startIcon.toSvgIcon(
                      size: iconSize,
                      colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn),
                    ),
                  Padding(
                    padding: paddingText,
                    child: AppText(
                      widget.text,
                      style: _getTextStyle(
                        context,
                        style: widget.style,
                        size: widgetSize,
                        color: widget.color,
                      ),
                    ),
                  ),
                  if (widget.badge != null) widget.badge!,
                  if (widget.endIcon != null)
                    widget.endIcon.toSvgIcon(
                      size: iconSize,
                      colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn),
                    ),
                ],
              ),
            ),
            if (widget.loading)
              Positioned.fill(
                child: Center(
                  child: AppLinearLoadingIndicator(
                    width: double.infinity,
                    color: theme.color.bgInverse,
                  ),
                ),
              ),
          ],
        ),
        if (widget.endChild != null)
          VerticalDivider(
            width: theme.border.md.maxWidth,
            indent: dividerIntent,
            endIndent: dividerIntent,
            thickness: theme.border.md.maxWidth,
            color: dividerColor,
          ),
        if (widget.endChild != null) widget.endChild!,
      ],
    );
  }

  TextStyle _getTextStyle(
    BuildContext context, {
    required AppButtonStyle style,
    required WidgetSize size,
    required Color? color,
  }) =>
      switch (size) {
        WidgetSize.xxs =>
          AppTextStyleBuilder.ui.s12.semiBold.color(textColor).build(context),
        WidgetSize.xs =>
          AppTextStyleBuilder.ui.s12.semiBold.color(textColor).build(context),
        WidgetSize.sm =>
          AppTextStyleBuilder.ui.s12.semiBold.color(textColor).build(context),
        WidgetSize.md =>
          AppTextStyleBuilder.ui.s14.semiBold.color(textColor).build(context),
        WidgetSize.lg =>
          AppTextStyleBuilder.ui.s14.semiBold.color(textColor).build(context),
        WidgetSize.xl =>
          AppTextStyleBuilder.ui.s14.semiBold.color(textColor).build(context),
        WidgetSize.xxl =>
          AppTextStyleBuilder.ui.s14.semiBold.color(textColor).build(context),
      };
}
