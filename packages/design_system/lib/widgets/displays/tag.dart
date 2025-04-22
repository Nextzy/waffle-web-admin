import 'package:design_system/lib.dart';

class AppTag extends AppStatefulWidget {
  const AppTag(
      {super.key,
      super.size = WidgetSize.md,
      this.style = WidgetStyle.shade,
      this.avatar,
      required this.text,
      this.onRemove});

  final WidgetStyle style;
  final AppCircleAvatar? avatar;
  final String text;

  final VoidCallback? onRemove;

  @override
  AppState<AppTag> createState() => _AppTagState();
}

class _AppTagState extends AppState<AppTag> {
  @override
  Widget build(BuildContext context) {
    return ContainerLayout(
      height: height,
      padding: padding,
      decoration: BoxDecoration(
        color: widget.style == WidgetStyle.shade
            ? context.theme.color.bgSurface2
            : Colors.transparent,
        border: widget.style == WidgetStyle.text
            ? null
            : Border.all(color: context.theme.color.border),
        borderRadius: BorderRadius.circular(20),
      ),
      child: RowLayout(
        mainAxisSize: MainAxisSize.min,
        gap: 8,
        children: [
          if (widget.avatar != null) widget.avatar!,
          AppText(widget.text,
              style: TextStyle(
                  color: context.theme.color.textPrimary,
                  fontSize: widgetSize == WidgetSize.sm ? 12 : 14,
                  fontWeight: FontWeight.w500)),
          if (widget.onRemove != null)
            InkWell(
                onTap: widget.onRemove,
                child: Assets.icon.xClose.svgIcon(
                    size: widgetSize == WidgetSize.sm ? 16 : 18,
                    colorFilter: ColorFilter.mode(
                        context.theme.color.iconTertiary, BlendMode.srcIn))),
        ],
      ),
    );
  }

  double get height => switch (widgetSize) {
        WidgetSize.xxs => 18,
        WidgetSize.xs => 18,
        WidgetSize.sm => 18,
        WidgetSize.md => 24,
        WidgetSize.lg => 32,
        WidgetSize.xl => 32,
        WidgetSize.xxl => 32,
      };

  EdgeInsets get padding => switch (widgetSize) {
        WidgetSize.xxs => widget.avatar != null
            ? const EdgeInsets.only(right: 4)
            : const EdgeInsets.symmetric(horizontal: 4),
        WidgetSize.xs => widget.avatar != null
            ? const EdgeInsets.only(right: 4)
            : const EdgeInsets.symmetric(horizontal: 4),
        WidgetSize.sm => widget.avatar != null
            ? const EdgeInsets.only(right: 4)
            : const EdgeInsets.symmetric(horizontal: 4),
        WidgetSize.md => const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
        WidgetSize.lg => const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
        WidgetSize.xl => const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
        WidgetSize.xxl =>
          const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
      };
}
