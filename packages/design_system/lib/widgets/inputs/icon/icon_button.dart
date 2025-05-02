// ignore_for_file: prefer_const_constructors_in_immutables
export 'close_button.dart';
export 'back_button.dart';
export 'filled_icon_button.dart';
export 'only_icon_button.dart';
export 'shaded_icon_button.dart';
export 'outline_icon_button.dart';
export 'destructive_icon_button.dart';

import 'package:design_system/lib.dart';

class AppIconButton extends AppStatefulWidget {
  AppIconButton({
    super.key,
    super.size,
    super.themeMode,
    this.style = AppButtonStyle.filledBand,
    required this.icon,
    this.customIconSize,
    this.padding,
    this.color,
    this.border,
    this.borderRadius,
    this.disabled = false,
    this.loading = false,
    this.hasColorFilter = true,
    this.onPress,
    this.onLongPress,
    this.onHover,
    this.onFocusChange,
    this.identifier,
  });

  final AppButtonStyle style;
  final double? customIconSize;
  final EdgeInsets? padding;
  final Color? color;
  final Border? border;
  final BorderRadius? borderRadius;
  late final String? icon;
  final bool loading;
  final bool disabled;
  final bool hasColorFilter;
  final String? identifier;

  ///============= CALLBACK METHOD =============///
  final VoidCallback? onPress;
  final VoidCallback? onLongPress;
  final ValueChanged<bool>? onHover;
  final ValueChanged<bool>? onFocusChange;

  @override
  AppState<AppIconButton> createState() => _AppIconButtonState();
}

class _AppIconButtonState extends AppState<AppIconButton> {
  EdgeInsetsGeometry get padding => switch (widgetSize) {
        WidgetSize.xxs => Space.insetAll4,
        WidgetSize.xs => Space.insetAll4,
        WidgetSize.sm => Space.insetAll4,
        WidgetSize.md => Space.insetAll6,
        WidgetSize.lg => Space.insetAll8,
        WidgetSize.xl => Space.insetAll8,
        WidgetSize.xxl => Space.insetAll8,
      };

  double get size => switch (widgetSize) {
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
            ? widget.color ?? theme.color.buttonPrimary
            : theme.color.buttonShade,
        AppButtonStyle.filled => widget.loading == false
            ? widget.color ?? theme.color.buttonFilled
            : theme.color.buttonShade,
        AppButtonStyle.outline => Colors.transparent,
        AppButtonStyle.text => Colors.transparent,
        AppButtonStyle.shaded => widget.loading == false
            ? widget.color ?? theme.color.buttonShade
            : theme.color.buttonShade,
        AppButtonStyle.destructive => widget.loading == false
            ? theme.color.buttonDestructive
            : theme.color.bgSubtleNegative
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

  @override
  Widget build(BuildContext context) {
    return Semantics(
      identifier: widget.identifier,
      child: GestureContainerLayout(
        mouseCursor: SystemMouseCursors.click,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        border: border,
        padding: widget.padding ?? padding,
        backgroundColor: backgroundColor,
        borderRadius: widget.borderRadius ?? borderRadius,
        disabled: widget.loading || widget.disabled,
        opacity: widget.disabled ? 0.5 : null,
        onPress: widget.onPress,
        onLongPress: widget.onLongPress,
        onHover: widget.onHover,
        onFocusChange: widget.onFocusChange,
        child: Stack(
          children: [
            Opacity(
              opacity: widget.loading ? 0.0 : 1.0,
              child: widget.icon.toSvgIcon(
                size: widget.customIconSize ?? size,
                colorFilter: widget.hasColorFilter
                    ? ColorFilter.mode(iconColor, BlendMode.srcIn)
                    : null,
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
      ),
    );
  }
}
