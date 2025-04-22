import 'package:design_system/lib.dart';

enum DividerDirection { vertical, horizontal }

enum DividerTextPosition { left, center, right }

class AppDivider extends AppStatelessWidget {
  const AppDivider(
      {super.key,
      this.direction = DividerDirection.horizontal,
      this.text,
      this.textPosition = DividerTextPosition.center,
      this.width,
      this.color,
      this.borderWidth,
      this.paddingStart,
      this.paddingEnd});

  final DividerDirection direction;
  final String? text;
  final DividerTextPosition textPosition;
  final double? width;
  final Color? color;
  final double? borderWidth;
  final double? paddingStart;
  final double? paddingEnd;

  @override
  Widget build(BuildContext context) {
    switch (direction) {
      case DividerDirection.horizontal:
        if (text.isNotNullOrBlank) {
          return Row(
            children: [
              if (textPosition != DividerTextPosition.left)
                Expanded(child: _buildDivider(context, 0, indent)),
              Padding(
                padding: padding,
                child: _buildText(context),
              ),
              if (textPosition != DividerTextPosition.right)
                Expanded(child: _buildDivider(context, indent, 0)),
            ],
          );
        } else {
          return SizedBox(
            width: width,
            child: _buildDivider(context, indent, endIndent),
          );
        }
      case DividerDirection.vertical:
        if (text.isNotNullOrBlank) {
          return Column(
            children: [
              if (textPosition != DividerTextPosition.left)
                SizedBox(
                  height: textPosition == DividerTextPosition.right
                      ? 240
                      : width != null
                          ? (width! / 2)
                          : 120,
                  child: _buildVerticalDivider(context),
                ),
              Padding(
                padding: verticalPadding,
                child: _buildText(context),
              ),
              if (textPosition != DividerTextPosition.right)
                SizedBox(
                  height: textPosition == DividerTextPosition.left
                      ? 240
                      : width != null
                          ? (width! / 2)
                          : 120,
                  child: _buildVerticalDivider(context),
                ),
            ],
          );
        } else {
          return SizedBox(
            height: width ?? 280,
            child: _buildVerticalDivider(context),
          );
        }
    }
  }

  EdgeInsets get padding => switch (textPosition) {
        DividerTextPosition.left => const EdgeInsets.only(right: 8),
        DividerTextPosition.center => const EdgeInsets.symmetric(horizontal: 8),
        DividerTextPosition.right => const EdgeInsets.only(left: 8),
      };

  EdgeInsets get verticalPadding => switch (textPosition) {
        DividerTextPosition.left => const EdgeInsets.only(bottom: 8),
        DividerTextPosition.center => const EdgeInsets.symmetric(vertical: 8),
        DividerTextPosition.right => const EdgeInsets.only(top: 8),
      };

  double get indent => paddingStart ?? 0;

  double get endIndent => paddingEnd ?? 0;

  double _getThickness(BuildContext context) {
    return borderWidth ?? getTheme(context).border.md.maxWidth;
  }

  Divider _buildDivider(BuildContext context, double start, double end) {
    return Divider(
      thickness: _getThickness(context),
      indent: start,
      endIndent: end,
      color: color ?? context.theme.color.border,
    );
  }

  VerticalDivider _buildVerticalDivider(BuildContext context) {
    return VerticalDivider(
      thickness: _getThickness(context),
      indent: indent,
      endIndent: endIndent,
      color: color ?? context.theme.color.border,
    );
  }

  AppText _buildText(BuildContext context) {
    return AppText(
      text,
      style: TextStyle(
        color: getTheme(context).color.textSecondary,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
