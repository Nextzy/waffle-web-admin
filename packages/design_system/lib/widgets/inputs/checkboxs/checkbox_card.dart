import 'package:design_system/lib.dart';

class AppCheckboxCard extends AppStatefulWidget {
  const AppCheckboxCard({
    super.key,
    this.style = AppTextFieldStyle.outline,
    this.icon,
    required this.label,
    this.defaultValue = false,
    this.feedbackState,
    this.statusText,
    this.helperText,
    this.disabled = false,
    this.onChanged,
  });

  final AppTextFieldStyle style;
  final String? icon;
  final String label;
  final bool defaultValue;
  final FeedbackState? feedbackState;
  final String? statusText;
  final String? helperText;
  final bool disabled;

  final ValueChanged<bool?>? onChanged;

  @override
  AppState<AppCheckboxCard> createState() => _AppCheckboxCardState();
}

class _AppCheckboxCardState extends AppState<AppCheckboxCard> {
  @override
  Widget build(BuildContext context) {
    return ContainerLayout(
      height: 112,
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border.all(
          color: borderColor,
        ),
        borderRadius: context.theme.borderRadius.md,
      ),
      child: RowLayout(
          crossAxisAlignment: CrossAxisAlignment.start,
          gap: 12,
          children: [
            if (widget.icon.isNotNullOrBlank)
              ContainerLayout(
                  padding: const EdgeInsets.only(top: 4),
                  child: widget.icon.toSvgIcon(
                      size: 24,
                      colorFilter: ColorFilter.mode(
                          context.theme.color.iconTertiary, BlendMode.srcIn))),
            Expanded(
              child: AppCheckbox(
                  style: widget.style,
                  position: AppCheckboxPosition.right,
                  label: widget.label,
                  defaultValue: widget.defaultValue,
                  feedbackState: widget.feedbackState,
                  statusText: widget.statusText,
                  helperText: widget.helperText,
                  disabled: widget.disabled,
                  onChanged: widget.onChanged),
            )
          ]),
    );
  }

  Color get backgroundColor => switch (widget.style) {
        AppTextFieldStyle.outline => context.theme.color.bg,
        AppTextFieldStyle.shaded => context.theme.color.bgSurface1
      };

  Color get borderColor => switch (widget.feedbackState) {
        FeedbackState.positive => context.theme.color.borderPositive,
        FeedbackState.warning => context.theme.color.borderWarning,
        FeedbackState.negative => context.theme.color.borderNegative,
        FeedbackState.info => widget.style == AppTextFieldStyle.shaded
            ? Colors.transparent
            : context.theme.color.border,
        null => widget.style == AppTextFieldStyle.shaded
            ? Colors.transparent
            : context.theme.color.border,
      };
}
