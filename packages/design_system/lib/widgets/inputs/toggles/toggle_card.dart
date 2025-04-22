import 'package:design_system/lib.dart';

class AppToggleCard extends AppStatefulWidget {
  const AppToggleCard({
    super.key,
    this.style = AppTextFieldStyle.outline,
    this.icon,
    required this.label,
    this.labelColor,
    this.defaultValue = false,
    this.feedbackState,
    this.statusText,
    this.helperText,
    this.helperTextColor,
    this.activeColor,
    this.borderColor,
    this.borderWidth = 1,
    this.borderRadius,
    this.disabled = false,
    this.onChanged,
  });

  final AppTextFieldStyle style;
  final String? icon;
  final String label;
  final Color? labelColor;
  final bool defaultValue;
  final FeedbackState? feedbackState;
  final String? statusText;
  final String? helperText;
  final Color? helperTextColor;
  final Color? activeColor;
  final Color? borderColor;
  final double borderWidth;
  final BorderRadius? borderRadius;
  final bool disabled;

  final ValueChanged<bool?>? onChanged;

  @override
  AppState<AppToggleCard> createState() => _AppToggleCardState();
}

class _AppToggleCardState extends AppState<AppToggleCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 112,
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border.all(
            color: widget.borderColor ?? borderColor,
            width: widget.borderWidth),
        borderRadius: widget.borderRadius ?? context.theme.borderRadius.md,
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
              child: AppToggle(
                  style: widget.style,
                  position: AppTogglePosition.right,
                  label: widget.label,
                  labelColor: widget.labelColor,
                  defaultValue: widget.defaultValue,
                  feedbackState: widget.feedbackState,
                  statusText: widget.statusText,
                  helperText: widget.helperText,
                  helperTextColor: widget.helperTextColor,
                  activeColor: widget.activeColor,
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
