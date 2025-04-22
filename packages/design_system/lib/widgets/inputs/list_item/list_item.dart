import 'package:design_system/lib.dart';

/// TODO:
/// ⏳ Implement label
/// ⏳ Implement edit state
class AppListItem extends AppStatelessWidget {
  const AppListItem({
    super.key,
    required this.titleText,
    this.titleColor,
    this.icon,
    this.iconColor,
    this.paintIconColor = true,
    this.supportText,
    this.labelText,
    this.edit = false,
    this.divider = true,
    this.enableTap = true,
    this.onPressed,
  });

  final String titleText;
  final Color? titleColor;
  final String? icon;
  final Color? iconColor;
  final bool paintIconColor;
  final String? supportText;
  final String? labelText;
  final bool edit;
  final bool divider;
  final bool enableTap;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = getTheme(context);
    final textColor = getTheme(context).color.textPrimary;

    return Container();

    // return AppInkWell(
    //   onTap: enableTap
    //       ? (onPressed ??
    //           () {
    //             // Handle item tap action
    //           })
    //       : null,
    //   child: RowLayout(
    //     height: 60,
    //     crossAxisIntrinsic: true,
    //     padding: EdgeInsets.only(left: theme.space.md),
    //     children: [
    //       if (icon != null)
    //         ColumnLayout(
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           padding: const EdgeInsets.only(right: 12),
    //           children: [
    //             icon.toSvgIcon(
    //               size: 24,
    //               color: paintIconColor ? (iconColor ?? textColor) : null,
    //             ),
    //           ],
    //         ),
    //       Expanded(
    //         child: RowLayout(
    //           border: divider
    //               ? Border(
    //                   bottom: BorderSide(
    //                     color: theme.color.border,
    //                     width: theme.border.md.maxWidth,
    //                   ),
    //                 )
    //               : null,
    //           children: [
    //             ColumnLayout(
    //               crossAxisIntrinsic: true,
    //               mainAxisAlignment: MainAxisAlignment.center,
    //               children: [
    //                 AppText(
    //                   titleText,
    //                   style: AppTextStyleBuilder.primaryText.md.semiBold
    //                       .color(titleColor ?? textColor)
    //                       .build(context),
    //                 ),
    //                 if (supportText.isNotNullOrEmpty)
    //                   AppText(
    //                     supportText,
    //                     style: AppTextStyleBuilder.primaryText.xs.colorBlack
    //                         .build(context),
    //                   ),
    //               ],
    //             ),
    //           ],
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}
