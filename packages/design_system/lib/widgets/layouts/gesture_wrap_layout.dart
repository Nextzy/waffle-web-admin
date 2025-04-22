import 'package:design_system/lib.dart';

class GestureWrapLayout extends StatefulWidget {
  const GestureWrapLayout({
    super.key,
    this.ratio,
    this.width,
    this.height,
    this.minWidth,
    this.maxWidth,
    this.minHeight,
    this.maxHeight,
    this.rotate,
    this.decoration,
    this.padding,
    this.margin,
    this.border,
    this.borderRadius,
    this.backgroundColor,
    this.backgroundGradient,
    this.backgroundImage,
    this.foregroundColor,
    this.foregroundGradient,
    this.foregroundImage,
    this.opacity,
    this.innerShadow,
    this.dropShadow,
    this.backgroundBlur,
    this.transform,
    this.direction = Axis.horizontal,
    this.alignment = WrapAlignment.start,
    this.spacing,
    this.runAlignment = WrapAlignment.start,
    this.runSpacing,
    this.crossAxisAlignment = WrapCrossAlignment.start,
    this.textDirection,
    this.verticalDirection = VerticalDirection.down,
    this.clipBehavior = Clip.none,
    this.gap,
    this.scrollable = false,
    this.animate = true,
    this.animateDuration,
    this.animateCurve,
    this.onEndAnimate,
    //=== InkWell ===//
    this.showFocus = true,
    this.disabledPressAnimation = false,
    this.disabled = false,
    this.onPress,
    this.onSecondaryPress,
    this.onDoubleTap,
    this.onLongPress,
    this.onHighlightChanged,
    this.onHover,
    this.mouseCursor,
    this.enableFeedback = true,
    this.excludeFromSemantics = false,
    this.focusNode,
    this.canRequestFocus = true,
    this.onFocusChange,
    this.autofocus = false,
    this.tapFocus = false,
    this.statesController,
    //===============//
    required this.children,
  });

  ///========== Frame ==========///
  // If you use width,height will override min and max width, height.
  final double? width;
  final double? height;
  final double? minWidth;
  final double? maxWidth;
  final double? minHeight;
  final double? maxHeight;
  final double? rotate; // 0-360 degree
  final double? ratio;

  ///========== Layout ==========///
  final BoxDecoration? decoration;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Border? border;
  final BorderRadius? borderRadius;
  final Matrix4? transform;
  final Color? backgroundColor;
  final Gradient? backgroundGradient;
  final DecorationImage? backgroundImage;
  final Color? foregroundColor;
  final Gradient? foregroundGradient;
  final DecorationImage? foregroundImage;
  final double? opacity;

  ///===== Animate ======///
  final bool? animate;
  final Duration? animateDuration;
  final Curve? animateCurve;
  final VoidCallback? onEndAnimate;

  ///===== Effect ======///
  final List<BoxShadow>? innerShadow;
  final List<BoxShadow>? dropShadow;
  final ImageFilter? backgroundBlur;

  ///===== InkWell ======///
  final bool showFocus;
  final bool disabledPressAnimation;
  final bool disabled;
  final GestureTapCallback? onPress;
  final GestureTapCallback? onSecondaryPress;
  final GestureTapCallback? onDoubleTap;
  final GestureLongPressCallback? onLongPress;
  final ValueChanged<bool>? onHighlightChanged;
  final ValueChanged<bool>? onHover;
  final MouseCursor? mouseCursor;
  final bool enableFeedback;
  final bool excludeFromSemantics;
  final ValueChanged<bool>? onFocusChange;
  final bool autofocus;
  final bool tapFocus;
  final FocusNode? focusNode;
  final bool canRequestFocus;
  final WidgetStatesController? statesController;

  ///====== Wrap ======///
  final Axis direction;
  final WrapAlignment alignment;
  final double? spacing;
  final WrapAlignment runAlignment;
  final double? runSpacing;
  final WrapCrossAlignment crossAxisAlignment;
  final TextDirection? textDirection;
  final VerticalDirection verticalDirection;
  final Clip clipBehavior;
  final double? gap;
  final bool scrollable;

  ///===== Child Widget ======///
  final List<Widget> children;

  @override
  State<GestureWrapLayout> createState() => _GestureWrapLayoutState();
}

class _GestureWrapLayoutState extends State<GestureWrapLayout> {
  @override
  Widget build(BuildContext context) => buildScrollable(
        scrollable: widget.scrollable,
        child: GestureContainerLayout(
          key: widget.key,
          ratio: widget.ratio,
          width: widget.width,
          height: widget.height,
          minWidth: widget.minWidth,
          maxWidth: widget.maxWidth,
          minHeight: widget.minHeight,
          maxHeight: widget.maxHeight,
          rotate: widget.rotate,
          decoration: widget.decoration,
          padding: widget.padding,
          margin: widget.margin,
          border: widget.border,
          borderRadius: widget.borderRadius,
          backgroundColor: widget.backgroundColor,
          backgroundGradient: widget.backgroundGradient,
          backgroundImage: widget.backgroundImage,
          foregroundColor: widget.foregroundColor,
          foregroundGradient: widget.foregroundGradient,
          foregroundImage: widget.foregroundImage,
          opacity: widget.opacity,
          clipBehavior: widget.clipBehavior,
          innerShadow: widget.innerShadow,
          dropShadow: widget.dropShadow,
          backgroundBlur: widget.backgroundBlur,
          transform: widget.transform,
          showFocus: widget.showFocus,
          disabled: widget.disabled,
          disabledPressAnimation: widget.disabledPressAnimation,
          onPress: widget.onPress,
          onSecondaryPress: widget.onSecondaryPress,
          onDoubleTap: widget.onDoubleTap,
          onLongPress: widget.onLongPress,
          onHighlightChanged: widget.onHighlightChanged,
          onHover: widget.onHover,
          mouseCursor: widget.mouseCursor,
          enableFeedback: widget.enableFeedback,
          excludeFromSemantics: widget.excludeFromSemantics,
          focusNode: widget.focusNode,
          canRequestFocus: widget.canRequestFocus,
          onFocusChange: widget.onFocusChange,
          autofocus: widget.autofocus,
          tapFocus: widget.tapFocus,
          statesController: widget.statesController,
          animate: widget.animate,
          animateDuration: widget.animateDuration,
          animateCurve: widget.animateCurve,
          onEndAnimate: widget.onEndAnimate,
          child: Wrap(
            direction: widget.direction,
            alignment: widget.alignment,
            spacing: widget.spacing ?? widget.gap ?? 0.0,
            runSpacing: widget.runSpacing ?? widget.gap ?? 0.0,
            runAlignment: widget.runAlignment,
            crossAxisAlignment: widget.crossAxisAlignment,
            textDirection: widget.textDirection,
            verticalDirection: widget.verticalDirection,
            clipBehavior: widget.clipBehavior,
            children: widget.children,
          ),
        ),
      );

  Widget buildScrollable({
    required bool scrollable,
    required Widget child,
  }) =>
      (scrollable)
          ? SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: child,
            )
          : child;
}
