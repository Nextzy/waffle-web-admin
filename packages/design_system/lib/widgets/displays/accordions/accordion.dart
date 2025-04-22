import 'package:design_system/lib.dart';

enum AppAccordionArrowPosition { left, right }

enum AppAccordionHelpPosition { bottom, right }

class AppAccordion extends AppStatefulWidget {
  const AppAccordion({
    super.key,
    super.size = WidgetSize.md,
    this.style,
    this.iconLabel,
    required this.label,
    this.helperText,
    required this.text,
    this.arrowPosition = AppAccordionArrowPosition.left,
    this.helperPosition = AppAccordionHelpPosition.bottom,
    this.disabled = false,
    this.expanded = false,
  });

  final WidgetStyle? style;
  final String? iconLabel;
  final String label;
  final String? helperText;
  final String text;
  final AppAccordionArrowPosition? arrowPosition;
  final AppAccordionHelpPosition? helperPosition;
  final bool disabled;
  final bool expanded;

  @override
  AppState<AppAccordion> createState() => _AppAccordionState();
}

class _AppAccordionState extends AppState<AppAccordion> {
  bool _expanded = false;

  @override
  void initState() {
    super.initState();
    _expanded = widget.expanded;
  }

  void _toggleExpand() {
    setState(() {
      _expanded = !_expanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureContainerLayout(
      disabled: widget.disabled,
      onPress: widget.disabled ? null : _toggleExpand,
      padding: padding,
      borderRadius: context.theme.borderRadius.md,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: context.theme.borderRadius.md,
        border: widget.style == WidgetStyle.outlined
            ? Border.all(
                color: widget.disabled
                    ? context.theme.color.border
                        .withValues(alpha: 0.4, red: 0, green: 0, blue: 0)
                    : context.theme.color.border,
              )
            : null,
      ),
      child: ColumnLayout(gap: 8, children: [
        RowLayout(
          crossAxisAlignment: CrossAxisAlignment.start,
          gap: 8,
          children: [
            if (widget.arrowPosition == AppAccordionArrowPosition.left)
              _buildArrowIcon(context),
            if (widget.iconLabel.isNotNullOrBlank)
              Column(
                children: [
                  widget.iconLabel.toSvgIcon(
                    size: widgetSize == WidgetSize.sm ? 14 : 16,
                    colorFilter:
                        ColorFilter.mode(textPrimaryColor, BlendMode.srcIn),
                  ),
                ],
              ),
            Expanded(
                child: ColumnLayout(
              crossAxisAlignment: CrossAxisAlignment.start,
              gap: 8,
              children: [
                AppText(
                  widget.label,
                  style: TextStyle(
                    color: textPrimaryColor,
                    fontSize: widgetSize == WidgetSize.sm ? 12 : 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                if (widget.helperPosition == AppAccordionHelpPosition.bottom &&
                    widget.helperText.isNotNullOrBlank)
                  _buildHelperText(context),
                if (widget.style != WidgetStyle.shade && _expanded)
                  _buildText(context),
              ],
            )),
            Column(
              children: [
                if (widget.helperPosition == AppAccordionHelpPosition.right &&
                    widget.helperText.isNotNullOrBlank)
                  _buildHelperText(context),
              ],
            ),
            if (widget.arrowPosition == AppAccordionArrowPosition.right)
              _buildArrowIcon(context),
          ],
        ),
        if (widget.style == WidgetStyle.shade && _expanded)
          Row(
            children: [
              Expanded(
                child: ContainerLayout(
                  padding: paddingText,
                  decoration: BoxDecoration(
                    color: widget.style == WidgetStyle.shade
                        ? context.theme.color.bg
                        : null,
                    borderRadius: widget.style == WidgetStyle.shade
                        ? context.theme.borderRadius.sm
                        : null,
                  ),
                  child: _buildText(context),
                ),
              ),
            ],
          )
      ]),
    );
  }

  EdgeInsets get padding => switch (widgetSize) {
        WidgetSize.xxs => const EdgeInsets.all(4),
        WidgetSize.xs => const EdgeInsets.all(4),
        WidgetSize.sm => const EdgeInsets.all(4),
        WidgetSize.md => const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
        WidgetSize.lg =>
          const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
        WidgetSize.xl =>
          const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
        WidgetSize.xxl =>
          const EdgeInsets.symmetric(horizontal: 8, vertical: 12)
      };

  Color get textPrimaryColor => widget.disabled
      ? context.theme.color.textPrimary
          .withValues(alpha: 0.4, red: 0, green: 0, blue: 0)
      : context.theme.color.textPrimary;

  Color get textSecondaryColor => widget.disabled
      ? context.theme.color.textSecondary
          .withValues(alpha: 0.4, red: 0, green: 0, blue: 0)
      : context.theme.color.textSecondary;

  Color get iconColor => widget.disabled
      ? context.theme.color.iconPrimary
          .withValues(alpha: 0.4, red: 0, green: 0, blue: 0)
      : context.theme.color.iconPrimary;

  Color get backgroundColor => switch (widget.style) {
        WidgetStyle.outlined => widget.disabled
            ? context.theme.color.bg
                .withValues(alpha: 0.005, red: 0, green: 0, blue: 0)
            : context.theme.color.bg,
        WidgetStyle.shade => widget.disabled
            ? context.theme.color.buttonShade
                .withValues(alpha: 0.05, red: 0, green: 0, blue: 0)
            : context.theme.color.buttonShade,
        WidgetStyle.filled => widget.disabled
            ? context.theme.color.bg
                .withValues(alpha: 0.005, red: 0, green: 0, blue: 0)
            : context.theme.color.bg,
        WidgetStyle.subtle => widget.disabled
            ? context.theme.color.bg
                .withValues(alpha: 0.005, red: 0, green: 0, blue: 0)
            : context.theme.color.bg,
        WidgetStyle.text => widget.disabled
            ? context.theme.color.bg
                .withValues(alpha: 0.005, red: 0, green: 0, blue: 0)
            : context.theme.color.bg,
        null => widget.disabled
            ? context.theme.color.bg
                .withValues(alpha: 0.005, red: 0, green: 0, blue: 0)
            : context.theme.color.bg
      };

  EdgeInsets get paddingText => switch (widgetSize) {
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
          const EdgeInsets.symmetric(horizontal: 16, vertical: 8)
      };

  Widget _buildArrowIcon(BuildContext context) {
    return Column(children: [
      if (_expanded)
        Assets.icon.caretDownRegular.svgIcon(
            size: widgetSize == WidgetSize.sm ? 12 : 16,
            colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn))
      else
        Assets.icon.caretRightRegular.svgIcon(
            size: widgetSize == WidgetSize.sm ? 12 : 16,
            colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn)),
    ]);
  }

  AppText _buildText(BuildContext context) {
    return AppText(
      widget.text,
      style: TextStyle(
        color: textPrimaryColor,
        fontSize: widget.size == WidgetSize.sm ? 12 : 14,
        fontWeight: FontWeight.w400,
      ),
    );
  }

  AppText _buildHelperText(BuildContext context) {
    return AppText(
      widget.helperText,
      style: TextStyle(
        color: textSecondaryColor,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
