import 'package:design_system/lib.dart';

enum AppBreadcrumbSeparatorType { caret, slash, dot, arrow }

class AppBreadcrumbs extends AppStatelessWidget {
  const AppBreadcrumbs(
      {super.key,
      super.size = WidgetSize.md,
      this.separator = AppBreadcrumbSeparatorType.caret,
      required this.children});

  final AppBreadcrumbSeparatorType separator;
  final List<AppBreadcrumbSection> children;

  @override
  Widget build(BuildContext context) {
    return RowLayout(
      gap: gap,
      children: [
        for (final child in children)
          RowLayout(
            gap: gap,
            children: [
              AppBreadcrumbSection(
                  size: size,
                  label: child.label,
                  icon: child.icon,
                  disabled: child.disabled,
                  onPress: child.onPress),
              if (children.last != child)
                ContainerLayout(
                    padding: size == WidgetSize.sm
                        ? null
                        : const EdgeInsets.only(left: 8),
                    child: _getSeparator(context))
            ],
          ),
      ],
    );
  }

  double get gap => switch (size) {
        WidgetSize.xxs => 4,
        WidgetSize.xs => 4,
        WidgetSize.sm => 4,
        WidgetSize.md => 6,
        WidgetSize.lg => 8,
        WidgetSize.xl => 8,
        WidgetSize.xxl => 8,
      };

  Widget _getSeparator(BuildContext context) {
    switch (separator) {
      case AppBreadcrumbSeparatorType.caret:
        return Assets.icon.caretRightRegular.svgIcon(
          size: 16,
          colorFilter: ColorFilter.mode(
              context.theme.color.iconTertiary, BlendMode.srcIn),
        );
      case AppBreadcrumbSeparatorType.slash:
        return AppText('/',
            style: TextStyle(
                color: context.theme.color.iconTertiary, fontSize: 16));
      case AppBreadcrumbSeparatorType.dot:
        return ContainerLayout(
          padding: const EdgeInsets.only(bottom: 12),
          child: AppText('.',
              style: TextStyle(
                  color: context.theme.color.iconTertiary, fontSize: 20)),
        );
      case AppBreadcrumbSeparatorType.arrow:
        return Assets.icon.arrowRightRegular.svgIcon(
          size: 16,
          colorFilter: ColorFilter.mode(
              context.theme.color.iconTertiary, BlendMode.srcIn),
        );
    }
  }
}
