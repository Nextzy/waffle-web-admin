import 'package:design_system/lib.dart';

class AppSidebar extends AppStatelessWidget {
  const AppSidebar({
    super.key,
    this.width,
    this.height,
    required this.logo,
    required this.items,
    this.bottoms,
  });

  final double? width;
  final double? height;
  final String logo;
  final List<AppSidebarSection> items;
  final List<AppSidebarSection>? bottoms;

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.sizeOf(context).height;

    return ContainerLayout(
      width: width ?? 240,
      height: height ?? _height,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      decoration: BoxDecoration(
        color: context.theme.color.bgSurface1,
        border: Border(
          right: BorderSide(
            color: context.theme.color.border,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 12,
              ),
              child: logo.toSvg()),
          Expanded(
              child: ColumnLayout(children: [
            for (final item in items)
              AppSidebarSection(
                  icon: item.icon,
                  title: item.title,
                  active: item.active,
                  disabled: item.disabled,
                  onPress: item.onPress),
          ])),
          if (bottoms != null)
            ColumnLayout(children: [
              for (final item in bottoms!)
                AppSidebarSection(
                    icon: item.icon,
                    title: item.title,
                    active: item.active,
                    disabled: item.disabled,
                    onPress: item.onPress),
            ]),
        ],
      ),
    );
  }
}
