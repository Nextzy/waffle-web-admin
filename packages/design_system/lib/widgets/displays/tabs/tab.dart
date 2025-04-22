import 'package:design_system/lib.dart';

enum AppTabStyle { shade, outlined, filled, underline }

class AppTab extends AppStatefulWidget {
  const AppTab(
      {super.key,
      super.size = WidgetSize.md,
      this.style = AppTabStyle.outlined,
      this.icon,
      required this.text,
      this.active = false,
      this.first = false,
      this.last = false,
      this.vertical = false,
      this.disabled = false});

  final AppTabStyle style;
  final String? icon;
  final String text;
  final bool active;
  final bool first;
  final bool last;
  final bool vertical;
  final bool disabled;

  @override
  AppState<AppTab> createState() => _AppTabState();
}

class _AppTabState extends AppState<AppTab> {
  @override
  Widget build(BuildContext context) {
    return ContainerLayout(
      padding: padding,
      decoration: BoxDecoration(
        color: widget.active ? backgroundColor : null,
        border: border,
        borderRadius: borderRadius,
      ),
      child: ColumnLayout(
        mainAxisAlignment: MainAxisAlignment.center,
        gap: 2,
        children: [
          if (widget.icon.isNotNullOrBlank)
            widget.icon.toSvgIcon(
              colorFilter: ColorFilter.mode(
                  widget.disabled
                      ? context.theme.color.iconTertiary
                      : context.theme.color.iconPrimary,
                  BlendMode.srcIn),
              size: widgetSize == WidgetSize.sm ? 12 : 14,
            ),
          AppText(
            widget.text,
            style: TextStyle(
              color: widget.disabled
                  ? context.theme.color.textTertiary
                  : context.theme.color.textPrimary,
              fontSize: widgetSize == WidgetSize.sm ? 12 : 14,
              fontWeight: widget.active ? FontWeight.w500 : FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }

  EdgeInsets get padding => switch (widgetSize) {
        WidgetSize.xxs =>
          const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        WidgetSize.xs => const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        WidgetSize.sm => const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        WidgetSize.md =>
          const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        WidgetSize.lg =>
          const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        WidgetSize.xl =>
          const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        WidgetSize.xxl =>
          const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      };

  Color get backgroundColor => switch (widget.style) {
        AppTabStyle.filled => context.theme.color.bgTab,
        AppTabStyle.shade => context.theme.color.bgSurface2,
        AppTabStyle.outlined => context.theme.color.bgSurface2,
        AppTabStyle.underline => context.theme.color.bgTab,
      };

  Border? get border => switch (widget.style) {
        AppTabStyle.filled => null,
        AppTabStyle.shade => null,
        AppTabStyle.outlined => widget.vertical
            ? widget.last
                ? null
                : Border(bottom: BorderSide(color: context.theme.color.border))
            : widget.last
                ? null
                : Border(right: BorderSide(color: context.theme.color.border)),
        AppTabStyle.underline => Border(
            bottom: BorderSide(
                color: widget.active
                    ? context.theme.color.borderActive
                    : context.theme.color.border)),
      };

  BorderRadius get borderRadius => switch (widget.style) {
        AppTabStyle.filled => context.theme.borderRadius.md,
        AppTabStyle.shade => context.theme.borderRadius.md,
        AppTabStyle.outlined => widget.vertical
            ? widget.first
                ? BorderRadius.vertical(top: Radius.circular(6))
                : widget.last
                    ? BorderRadius.vertical(bottom: Radius.circular(6))
                    : context.theme.borderRadius.zero
            : widget.first
                ? BorderRadius.only(
                    topLeft: Radius.circular(6),
                    bottomLeft: Radius.circular(6),
                  )
                : widget.last
                    ? BorderRadius.only(
                        topRight: Radius.circular(6),
                        bottomRight: Radius.circular(6),
                      )
                    : context.theme.borderRadius.zero,
        AppTabStyle.underline => context.theme.borderRadius.zero,
      };
}
