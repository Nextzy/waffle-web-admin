import 'package:design_system/lib.dart';

class StackLayout extends StatelessWidget {
  const StackLayout({
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
    this.clipBehavior = Clip.hardEdge,
    this.innerShadow,
    this.dropShadow,
    this.backgroundBlur,
    this.transform,
    this.alignment = AlignmentDirectional.topStart,
    this.fit = StackFit.loose,
    this.textDirection,
    this.scrollable = false,
    this.animate,
    this.animateDuration,
    this.animateCurve,
    this.onEndAnimate,
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

  ///====== Stack ======///
  final TextDirection? textDirection;
  final StackFit fit;
  final AlignmentGeometry alignment;
  final bool scrollable;

  ///===== Child Widget ======///
  final List<Widget> children;

  @override
  Widget build(BuildContext context) => buildScrollable(
        scrollable: scrollable,
        child: ContainerLayout(
          key: key,
          ratio: ratio,
          width: width,
          height: height,
          minWidth: minWidth,
          maxWidth: maxWidth,
          minHeight: minHeight,
          maxHeight: maxHeight,
          rotate: rotate,
          decoration: decoration,
          padding: padding,
          margin: margin,
          border: border,
          borderRadius: borderRadius,
          backgroundColor: backgroundColor,
          backgroundGradient: backgroundGradient,
          backgroundImage: backgroundImage,
          foregroundColor: foregroundColor,
          foregroundGradient: foregroundGradient,
          foregroundImage: foregroundImage,
          opacity: opacity,
          clipBehavior: clipBehavior,
          innerShadow: innerShadow,
          dropShadow: dropShadow,
          backgroundBlur: backgroundBlur,
          transform: transform,
          animate: animate,
          animateDuration: animateDuration,
          animateCurve: animateCurve,
          onEndAnimate: onEndAnimate,
          child: Stack(
            textDirection: textDirection,
            fit: fit,
            alignment: alignment,
            clipBehavior: clipBehavior,
            children: children,
          ),
        ),
      );

  Widget buildScrollable({
    required bool scrollable,
    required Widget child,
  }) =>
      (scrollable)
          ? SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: child,
            )
          : child;
}
