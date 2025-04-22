import 'package:design_system/lib.dart';

class AppSidebarSection extends AppStatelessWidget {
  const AppSidebarSection({
    super.key,
    required this.icon,
    required this.title,
    this.active = false,
    this.disabled = false,
    this.onPress,
  });

  final String icon;
  final String title;
  final bool active;
  final bool disabled;

  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureContainerLayout(
      onPress: disabled ? null : onPress,
      mouseCursor: SystemMouseCursors.click,
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
      ),
      backgroundColor: active ? context.theme.color.buttonSecondaryHover : null,
      borderRadius: context.theme.borderRadius.md,
      disabled: disabled,
      opacity: disabled ? 0.5 : 1,
      child: RowLayout(gap: 8, children: [
        icon.toSvgIcon(
            colorFilter: ColorFilter.mode(
              context.theme.color.iconPrimary,
              BlendMode.srcIn,
            ),
            size: 24),
        AppText(title,
            style: TextStyle(
              color: context.theme.color.textPrimary,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            )),
      ]),
    );
  }
}
