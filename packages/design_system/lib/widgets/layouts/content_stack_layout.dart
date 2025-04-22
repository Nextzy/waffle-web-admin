import 'package:design_system/lib.dart';

class ContentStackLayout extends StackLayout {
  const ContentStackLayout({
    super.key,
    super.ratio,
    super.height,
    super.minHeight,
    super.maxHeight,
    super.rotate,
    super.decoration,
    super.padding = const EdgeInsets.symmetric(horizontal: 20.0),
    super.margin,
    super.border,
    super.borderRadius,
    super.backgroundColor,
    super.backgroundGradient,
    super.backgroundImage,
    super.foregroundColor,
    super.foregroundGradient,
    super.foregroundImage,
    super.opacity,
    super.clipBehavior,
    super.innerShadow,
    super.dropShadow,
    super.backgroundBlur,
    super.transform,
    super.alignment,
    super.fit,
    super.textDirection,
    super.scrollable,
    required super.children,
  }) : super(
          width: double.infinity,
          maxWidth: 1000,
        );
}
