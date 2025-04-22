import 'package:design_system/lib.dart';

enum DividerDirection { vertical, horizontal }

class AppDivider extends AppStatelessWidget {
  const AppDivider({
    super.key,
    required this.direction,
    this.width,
    this.space,
    this.paddingSymmetry,
    this.paddingStart,
    this.paddingEnd,
  });

  final DividerDirection direction;
  final double? width;
  final double? space;
  final double? paddingSymmetry;
  final double? paddingStart;
  final double? paddingEnd;

  static AppDivider horizontal({
    double? width,
    double? paddingSymmetry,
    double? paddingStart,
    double? paddingEnd,
  }) =>
      AppDivider(
        width: width,
        direction: DividerDirection.horizontal,
        paddingSymmetry: paddingSymmetry,
        paddingStart: paddingStart,
        paddingEnd: paddingEnd,
      );

  static AppDivider vertical({
    double? width,
    double? paddingSymmetry,
    double? paddingStart,
    double? paddingEnd,
  }) =>
      AppDivider(
        width: width,
        direction: DividerDirection.vertical,
        paddingSymmetry: paddingSymmetry,
        paddingStart: paddingStart,
        paddingEnd: paddingEnd,
      );

  static AppDivider horizontalWhite({
    double? width,
    double? paddingSymmetry,
    double? paddingStart,
    double? paddingEnd,
  }) =>
      AppDivider(
        width: width,
        direction: DividerDirection.horizontal,
        paddingSymmetry: paddingSymmetry,
        paddingStart: paddingStart,
        paddingEnd: paddingEnd,
      );

  static AppDivider verticalWhite({
    double? width,
    double? paddingSymmetry,
    double? paddingStart,
    double? paddingEnd,
  }) =>
      AppDivider(
        width: width,
        direction: DividerDirection.vertical,
        paddingSymmetry: paddingSymmetry,
        paddingStart: paddingStart,
        paddingEnd: paddingEnd,
      );

  @override
  Widget build(BuildContext context) {
    switch (direction) {
      case DividerDirection.vertical:
        return VerticalDivider(
          key: key,
          thickness: width ?? getTheme(context).border.md.maxWidth,
          width: space ?? width ?? getTheme(context).border.md.maxWidth,
          color: getTheme(context).color.border,
          indent: paddingSymmetry ?? (paddingStart ?? 0),
          endIndent: paddingSymmetry ?? (paddingEnd ?? 0),
        );
      case DividerDirection.horizontal:
        return Divider(
          key: key,
          thickness: width ?? getTheme(context).border.md.maxWidth,
          height: space ?? width ?? getTheme(context).border.md.maxWidth,
          color: getTheme(context).color.border,
          indent: paddingSymmetry ?? (paddingStart ?? 0),
          endIndent: paddingSymmetry ?? (paddingEnd ?? 0),
        );
    }
  }
}
