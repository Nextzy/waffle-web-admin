import 'package:design_system/lib.dart';

class GestureStackLayout extends StatefulWidget {
  const GestureStackLayout({
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
    this.clipBehavior = Clip.none,
    this.innerShadow,
    this.dropShadow,
    this.backgroundBlur,
    this.transform,
    this.textDirection,
    this.alignment = AlignmentDirectional.topStart,
    this.fit = StackFit.loose,
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
  final Clip clipBehavior;

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

  ///====== Stack ======///
  final TextDirection? textDirection;
  final StackFit fit;
  final AlignmentGeometry alignment;
  final bool scrollable;

  ///===== Child Widget ======///
  final List<Widget> children;

  @override
  State<GestureStackLayout> createState() => _GestureStackLayoutState();
}

class _GestureStackLayoutState extends State<GestureStackLayout> {
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
          child: Stack(
            textDirection: widget.textDirection,
            fit: widget.fit,
            alignment: widget.alignment,
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
