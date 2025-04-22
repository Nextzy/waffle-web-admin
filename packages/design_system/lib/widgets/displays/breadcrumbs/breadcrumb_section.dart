import 'package:design_system/lib.dart';

class AppBreadcrumbSection extends AppStatelessWidget {
  const AppBreadcrumbSection(
      {super.key,
      super.size = WidgetSize.md,
      this.label,
      this.icon,
      this.disabled = false,
      this.onPress});

  final String? label;
  final String? icon;
  final bool disabled;

  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => disabled ? null : onPress,
      child: Row(
        children: [
          if (icon.isNotNullOrBlank)
            ContainerLayout(
              padding: const EdgeInsets.all(4),
              child: icon.toSvgIcon(
                  size: size == WidgetSize.sm ? 14 : 16,
                  colorFilter: ColorFilter.mode(
                      disabled
                          ? context.theme.color.iconPrimary.withValues(
                              alpha: 0.08, red: 0, green: 0, blue: 0)
                          : context.theme.color.iconPrimary,
                      BlendMode.srcIn)),
            ),
          if (label.isNotNullOrBlank)
            ContainerLayout(
              padding: const EdgeInsets.all(4),
              child: AppText(label,
                  style: TextStyle(
                      color: disabled
                          ? context.theme.color.textPrimary.withValues(
                              alpha: 0.08, red: 0, green: 0, blue: 0)
                          : context.theme.color.textPrimary,
                      fontSize: size == WidgetSize.sm ? 12 : 14)),
            ),
        ],
      ),
    );
  }
}
