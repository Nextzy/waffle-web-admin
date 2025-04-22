import 'package:design_system/lib.dart';

class AppInkWell extends AppStatelessWidget {
  const AppInkWell({
    super.key,
    super.state = FullWidgetState.normal,
    this.child,
    this.onTap,
    this.onDoubleTap,
    this.onLongPress,
    this.onTapDown,
    this.onTapUp,
    this.onTapCancel,
    this.onHighlightChanged,
    this.onHover,
    this.mouseCursor,
    this.focusColor,
    this.hoverColor,
    this.highlightColor,
    this.overlayColor,
    this.splashColor,
    this.splashFactory,
    this.radius,
    this.borderRadius,
    this.customBorder,
    this.enableFeedback = true,
    this.excludeFromSemantics = false,
    this.focusNode,
    this.canRequestFocus = true,
    this.onFocusChange,
    this.autofocus = false,
    this.statesController,
  });

  final Widget? child;
  final GestureTapCallback? onTap;
  final GestureTapDownCallback? onTapDown;
  final GestureTapUpCallback? onTapUp;
  final GestureTapCallback? onTapCancel;
  final GestureTapCallback? onDoubleTap;
  final GestureLongPressCallback? onLongPress;
  final ValueChanged<bool>? onHighlightChanged;
  final ValueChanged<bool>? onHover;
  final MouseCursor? mouseCursor;
  final double? radius;
  final BorderRadius? borderRadius;
  final ShapeBorder? customBorder;
  final Color? focusColor;
  final Color? hoverColor;
  final Color? highlightColor;
  final WidgetStateProperty<Color?>? overlayColor;
  final Color? splashColor;
  final InteractiveInkFeatureFactory? splashFactory;
  final bool enableFeedback;
  final bool excludeFromSemantics;
  final ValueChanged<bool>? onFocusChange;
  final bool autofocus;
  final FocusNode? focusNode;
  final bool canRequestFocus;
  final WidgetStatesController? statesController;

  @override
  Widget build(BuildContext context) {
    final theme = getTheme(context);

    return InkWell(
      onTap: onTap,
      onDoubleTap: onDoubleTap,
      onLongPress: onLongPress,
      onTapDown: onTapDown,
      onTapUp: onTapUp,
      onTapCancel: onTapCancel,
      onHighlightChanged: onHighlightChanged,
      onHover: onHover,
      mouseCursor: mouseCursor,
      overlayColor: overlayColor ??
          createOverlayStateStyle(
            context,
            hoverColor: hoverColor,
            focusColor: focusColor,
            highlightColor: highlightColor,
          ),
      splashColor: splashColor ?? theme.color.overlayActive,
      splashFactory: splashFactory,
      radius: radius,
      borderRadius: borderRadius,
      customBorder: customBorder,
      enableFeedback: enableFeedback,
      excludeFromSemantics: excludeFromSemantics,
      focusNode: focusNode,
      canRequestFocus: canRequestFocus,
      onFocusChange: onFocusChange,
      autofocus: autofocus,
      statesController: statesController,
      child: Material(
        color: Colors.transparent,
        child: child,
      ),
    );
  }

  WidgetStateProperty<Color?> createOverlayStateStyle(
    BuildContext context, {
    required Color? focusColor,
    required Color? hoverColor,
    required Color? highlightColor,
  }) {
    final theme = getTheme(context);
    final defaultHoverColor = theme.color.overlayHover;
    final defaultFocusColor = theme.color.overlayHover;
    final defaultPressColor = theme.color.overlayActive;

    return WidgetStateProperty.resolveWith<Color?>(
      (states) {
        if (states.contains(WidgetState.hovered)) {
          return hoverColor ?? defaultHoverColor;
        } else if (states.contains(WidgetState.focused)) {
          return focusColor ?? defaultFocusColor;
        } else if (states.contains(WidgetState.pressed)) {
          return highlightColor ?? defaultPressColor;
        } else {
          return null;
        }
      },
    );
  }
}
