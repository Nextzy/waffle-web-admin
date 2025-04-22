import 'package:design_system/lib.dart';

class ContainerLayout extends StatelessWidget {
  const ContainerLayout({
    super.key,
    this.ratio,
    this.width,
    this.height,
    this.minWidth,
    this.maxWidth,
    this.minHeight,
    this.maxHeight,
    this.rotate,
    this.alignment,
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
    this.transformAlignment,
    this.animate,
    this.animateDuration,
    this.animateCurve,
    this.onEndAnimate,
    this.child,
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
  final BorderRadiusGeometry? borderRadius;
  final AlignmentGeometry? alignment;
  final AlignmentGeometry? transformAlignment;
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

  ///===== Child Widget ======///
  final Widget? child;

  @override
  Widget build(BuildContext context) => buildRotate(
        rotate: rotate,
        child: buildOpacity(
          opacity: opacity,
          child: buildDropDownShadow(
            context,
            animate: animate,
            animateDuration: animateDuration,
            animateCurve: animateCurve,
            onEndAnimate: onEndAnimate,
            decoration: decoration,
            borderRadius: borderRadius,
            dropShadow: dropShadow,
            child: buildClipRect(
              clipBehavior: clipBehavior,
              borderRadius: borderRadius,
              child: buildBlur(
                backgroundBlur: backgroundBlur,
                child: buildContent(
                  animate: animate,
                  animateDuration: animateDuration,
                  animateCurve: animateCurve,
                  onEndAnimate: onEndAnimate,
                  decoration: decoration,
                  alignment: alignment,
                  padding: padding,
                  margin: margin,
                  width: width,
                  height: height,
                  minWidth: minWidth,
                  maxWidth: maxWidth,
                  minHeight: minHeight,
                  maxHeight: maxHeight,
                  foregroundColor: foregroundColor,
                  foregroundGradient: foregroundGradient,
                  foregroundImage: foregroundImage,
                  backgroundColor: backgroundColor,
                  backgroundGradient: backgroundGradient,
                  backgroundImage: backgroundImage,
                  border: border,
                  borderRadius: borderRadius,
                  innerShadow: innerShadow,
                  transform: transform,
                  transformAlignment: transformAlignment,
                  child: buildRatio(
                    ratio: ratio,
                    child: child,
                  ),
                ),
              ),
            ),
          ),
        ),
      );

  Widget buildOpacity({
    required double? opacity,
    required Widget child,
  }) =>
      (opacity != null && opacity < 1.0)
          ? Opacity(
              opacity: opacity,
              child: child,
            )
          : child;

  Widget buildRotate({
    required double? rotate,
    required Widget child,
  }) =>
      (rotate != null)
          ? RotationTransition(
              key: key,
              turns: AlwaysStoppedAnimation((rotate % 360) / 360),
              child: child,
            )
          : child;

  Widget? buildRatio({
    required double? ratio,
    required Widget? child,
  }) {
    if (child == null) return null;

    return (ratio != null && ratio > 0)
        ? AspectRatio(
            key: key,
            aspectRatio: ratio,
            child: child,
          )
        : child;
  }

  Widget buildDropDownShadow(
    BuildContext context, {
    required bool? animate,
    required Duration? animateDuration,
    required Curve? animateCurve,
    required VoidCallback? onEndAnimate,
    required BoxDecoration? decoration,
    required BorderRadiusGeometry? borderRadius,
    required List<BoxShadow>? dropShadow,
    required Widget child,
  }) =>
      (dropShadow != null)
          ? buildContainer(
              key: key,
              animate: animate,
              animateDuration: animateDuration,
              animateCurve: animateCurve,
              onEndAnimate: onEndAnimate,
              decoration: BoxDecoration(
                color: context.theme.color.bg,
                borderRadius: borderRadius,
                boxShadow: decoration?.boxShadow ?? dropShadow,
              ),
              child: child,
            )
          : child;

  Widget buildClipRect({
    required Clip clipBehavior,
    required BorderRadiusGeometry? borderRadius,
    required Widget child,
  }) =>
      (clipBehavior == Clip.none || borderRadius == null)
          ? child
          : ClipRRect(
              key: key,
              clipBehavior: clipBehavior,
              borderRadius: borderRadius,
              child: child,
            );

  Widget buildBlur({
    required ImageFilter? backgroundBlur,
    required Widget child,
  }) =>
      backgroundBlur != null
          ? BackdropFilter(
              key: key,
              filter: backgroundBlur,
              child: child,
            )
          : child;

  Widget buildContent({
    required BoxDecoration? decoration,
    required AlignmentGeometry? alignment,
    required EdgeInsetsGeometry? padding,
    required EdgeInsetsGeometry? margin,
    required double? width,
    required double? height,
    required double? minWidth,
    required double? maxWidth,
    required double? minHeight,
    required double? maxHeight,
    required Color? foregroundColor,
    required Gradient? foregroundGradient,
    required DecorationImage? foregroundImage,
    required Color? backgroundColor,
    required Gradient? backgroundGradient,
    required DecorationImage? backgroundImage,
    required Border? border,
    required BorderRadiusGeometry? borderRadius,
    required List<BoxShadow>? innerShadow,
    required Matrix4? transform,
    required AlignmentGeometry? transformAlignment,
    required bool? animate,
    required Duration? animateDuration,
    required Curve? animateCurve,
    required VoidCallback? onEndAnimate,
    required Widget? child,
  }) =>
      buildContainer(
        key: key,
        animate: animate,
        animateDuration: animateDuration,
        animateCurve: animateCurve,
        onEndAnimate: onEndAnimate,
        alignment: alignment,
        margin: margin,
        height: height,
        width: width,
        constraints: width != null ||
                height != null ||
                minWidth != null ||
                maxWidth != null ||
                minHeight != null ||
                maxHeight != null
            ? BoxConstraints(
                minWidth: minWidth ?? 0.0,
                maxWidth: maxWidth ?? double.infinity,
                minHeight: minHeight ?? 0.0,
                maxHeight: maxHeight ?? double.infinity,
              )
            : null,
        foregroundDecoration: BoxDecoration(
          gradient: foregroundGradient,
          color: foregroundColor,
          image: foregroundImage,
          borderRadius: decoration?.borderRadius ?? borderRadius,
          border: decoration?.border ?? border,
        ),
        decoration: BoxDecoration(
          color: innerShadow.isEmptyOrNull
              ? decoration?.color ?? backgroundColor
              : null,
          gradient: decoration?.gradient ?? backgroundGradient,
          image: decoration?.image ?? backgroundImage,
          borderRadius: decoration?.borderRadius ?? borderRadius,
          boxShadow: [
            if (innerShadow.isNotEmptyOrNull) ...[
              ...?innerShadow?.map(
                (shadow) => BoxShadow(color: shadow.color),
              ),
              ...?innerShadow?.map(
                (shadow) => BoxShadow(
                    color: decoration?.color ??
                        backgroundColor ??
                        Colors.transparent,
                    blurRadius: shadow.blurRadius,
                    spreadRadius: shadow.spreadRadius,
                    offset: shadow.offset),
              ),
            ],
            // ...?innerShadow,
          ],
        ),
        transform: transform,
        transformAlignment: transformAlignment,
        child: Container(
          key: key,
          padding: padding,
          child: child ?? const SizedBox(),
        ),
      );

  Widget buildContainer({
    Key? key,
    AlignmentGeometry? alignment,
    EdgeInsetsGeometry? padding,
    BoxDecoration? decoration,
    BoxDecoration? foregroundDecoration,
    double? width,
    double? height,
    BoxConstraints? constraints,
    EdgeInsetsGeometry? margin,
    Color? color,
    Matrix4? transform,
    AlignmentGeometry? transformAlignment,
    Clip? clipBehavior,
    bool? animate = false,
    Duration? animateDuration = const Duration(milliseconds: 80),
    Curve? animateCurve,
    VoidCallback? onEndAnimate,
    Widget? child,
  }) =>
      animate == true
          ? AnimatedContainer(
              key: key,
              duration: animateDuration ?? const Duration(milliseconds: 80),
              alignment: alignment,
              padding: padding,
              decoration: decoration,
              foregroundDecoration: foregroundDecoration,
              width: width,
              height: height,
              constraints: constraints,
              margin: margin,
              color: color,
              transform: transform,
              transformAlignment: transformAlignment,
              clipBehavior: clipBehavior ?? Clip.none,
              curve: animateCurve ?? Curves.linear,
              onEnd: onEndAnimate,
              child: child,
            )
          : Container(
              key: key,
              alignment: alignment,
              padding: padding,
              decoration: decoration,
              foregroundDecoration: foregroundDecoration,
              width: width,
              height: height,
              constraints: constraints,
              margin: margin,
              color: color,
              transform:transform,
              transformAlignment: transformAlignment,
              clipBehavior: clipBehavior ?? Clip.none,
              child: child,
            );
}
