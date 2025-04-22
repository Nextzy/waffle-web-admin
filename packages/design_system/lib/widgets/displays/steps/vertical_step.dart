import 'package:design_system/lib.dart';

class AppVerticalSteps extends AppStatefulWidget {
  const AppVerticalSteps({
    super.key,
    super.size = WidgetSize.md,
    this.style = AppStepStyle.number,
    required this.children,
    this.defaultValue = 1,
    this.background = false,
    this.onChanged,
  });

  final AppStepStyle style;
  final List<AppStepItem> children;
  final int defaultValue;
  final bool background;

  final ValueChanged<int>? onChanged;

  @override
  AppState<AppVerticalSteps> createState() => _AppVerticalStepsState();
}

class _AppVerticalStepsState extends AppState<AppVerticalSteps> {
  late int _currentStep = 1;

  @override
  void initState() {
    super.initState();
    setState(() {
      _currentStep = widget.defaultValue;
    });
  }

  void _onTap(int step) {
    setState(() {
      _currentStep = step;
    });

    if (widget.onChanged != null) {
      widget.onChanged!(step);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ColumnLayout(
      gap: 2,
      children: [
        for (final child in widget.children)
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ColumnLayout(
                gap: 2,
                children: [
                  if (widget.style == AppStepStyle.dot &&
                      widget.children.indexOf(child) == 0)
                    Gap(4),
                  GestureContainerLayout(
                    onPress: () => _onTap(widget.children.indexOf(child) + 1),
                    borderRadius: BorderRadius.circular(999),
                    child: _buildIndicator(context,
                        widget.children.indexOf(child) + 1, child.icon),
                  ),
                  if (widget.children.indexOf(child) + 1 !=
                      widget.children.length)
                    ContainerLayout(
                      width: 2,
                      height: 40,
                      decoration: BoxDecoration(
                        color: _currentStep > widget.children.indexOf(child) + 1
                            ? context.theme.color.brandPrimary
                            : context.theme.color.border,
                      ),
                    ),
                ],
              ),
              Gap(12),
              Expanded(
                  child: AppStepItem(
                      size: widgetSize,
                      title: child.title,
                      description: child.description))
            ],
          )
      ],
    );
  }

  Widget _buildIndicator(BuildContext context, int step, String? icon) {
    switch (widget.style) {
      case AppStepStyle.number:
        return ContainerLayout(
          width: widgetSize == WidgetSize.sm ? 18 : 24,
          height: widgetSize == WidgetSize.sm ? 18 : 24,
          decoration: BoxDecoration(
            color: context.theme.color.bg,
            borderRadius: BorderRadius.circular(24),
            border: Border.all(
              color: _currentStep >= step
                  ? context.theme.color.brandPrimary
                  : context.theme.color.border,
              width: 2,
            ),
          ),
          child: Center(
            child: AppText(
              step.toString(),
              style: TextStyle(
                color: _currentStep >= step
                    ? context.theme.color.brandPrimary
                    : context.theme.color.textSecondary,
                fontSize: widgetSize == WidgetSize.sm ? 12 : 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        );
      case AppStepStyle.dot:
        return ContainerLayout(
          width: 8,
          height: 8,
          decoration: BoxDecoration(
            color: _currentStep >= step
                ? context.theme.color.bg
                : context.theme.color.border,
            borderRadius: BorderRadius.circular(24),
            border: _currentStep >= step
                ? Border.all(
                    color: _currentStep >= step
                        ? context.theme.color.brandPrimary
                        : context.theme.color.border,
                    width: 2,
                  )
                : null,
          ),
        );
      case AppStepStyle.icon:
        return ContainerLayout(
          padding: widget.background
              ? const EdgeInsets.symmetric(horizontal: 8, vertical: 8)
              : null,
          decoration: BoxDecoration(
              color: widget.background
                  ? _currentStep >= step
                      ? context.theme.color.bgSubtleBlue
                      : context.theme.color.bgSurface2
                  : null,
              borderRadius:
                  widget.background ? BorderRadius.circular(999) : null),
          child: icon.toSvgIcon(
            size: widgetSize == WidgetSize.sm ? 16 : 24,
            colorFilter: ColorFilter.mode(
              _currentStep >= step
                  ? context.theme.color.brandPrimary
                  : context.theme.color.iconTertiary,
              BlendMode.srcIn,
            ),
          ),
        );
    }
  }
}
