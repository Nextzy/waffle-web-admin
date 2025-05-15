import 'package:design_system/lib.dart';

enum AppCheckboxPosition { left, right }

class AppCheckbox extends AppStatefulWidget {
  const AppCheckbox({
    super.key,
    super.size = WidgetSize.md,
    this.style = AppTextFieldStyle.outline,
    this.position = AppCheckboxPosition.left,
    required this.label,
    this.defaultValue = false,
    this.feedbackState,
    this.statusText,
    this.helperText,
    this.disabled = false,
    this.onChanged,
    this.identifier,
  });

  final AppTextFieldStyle style;
  final AppCheckboxPosition position;
  final String label;
  final bool defaultValue;
  final FeedbackState? feedbackState;
  final String? statusText;
  final String? helperText;
  final bool disabled;
  final String? identifier;

  final ValueChanged<bool>? onChanged;

  @override
  AppState<AppCheckbox> createState() => _AppCheckboxState();
}

class _AppCheckboxState extends AppState<AppCheckbox> {
  bool _value = false;

  @override
  void initState() {
    super.initState();
    _value = widget.defaultValue;
  }

  void _onChanged(bool? value) {
    if (value != null) {
      setState(() {
        _value = value;
      });

      if (widget.onChanged != null) {
        widget.onChanged!(value);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Semantics(
      identifier: widget.identifier,
      child: ColumnLayout(
        mainAxisAlignment: MainAxisAlignment.start,
        gap: 4,
        children: [
          Row(
            mainAxisAlignment: widget.position == AppCheckboxPosition.left
                ? MainAxisAlignment.start
                : MainAxisAlignment.spaceBetween,
            children: [
              if (widget.position == AppCheckboxPosition.left) _buildCheckbox(),
              AppText(
                widget.label,
                style: TextStyle(
                  color: widget.disabled
                      ? context.theme.color.textTertiary
                      : context.theme.color.textPrimary,
                  fontSize: widgetSize == WidgetSize.sm ? 12 : 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              if (widget.position == AppCheckboxPosition.right)
                _buildCheckbox(),
            ],
          ),
          if (widget.helperText.isNotNullOrBlank)
            Padding(
              padding: widget.position == AppCheckboxPosition.right
                  ? EdgeInsets.zero
                  : const EdgeInsets.only(left: 32),
              child: AppText(
                widget.helperText,
                style: TextStyle(
                  color: widget.disabled
                      ? context.theme.color.textTertiary
                      : context.theme.color.textSecondary,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          if (widget.statusText.isNotNullOrBlank &&
              widget.feedbackState != null)
            Row(
              children: [
                Padding(
                  padding: widget.position == AppCheckboxPosition.right
                      ? EdgeInsets.zero
                      : const EdgeInsets.only(left: 32),
                  child: AppText(
                    '$textFeedbackIcon${widget.statusText}',
                    style: TextStyle(
                      color: textFeedbackColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                )
              ],
            )
        ],
      ),
    );
  }

  Widget _buildCheckbox() {
    return Checkbox(
        value: _value,
        onChanged: widget.disabled ? null : _onChanged,
        activeColor: activeColor,
        overlayColor: WidgetStatePropertyAll(Colors.transparent),
        fillColor: backgroundColor,
        side: BorderSide(
          color: borderColor,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: context.theme.borderRadius.sm,
        ));
  }

  Color get activeColor => switch (widget.feedbackState) {
        FeedbackState.positive => context.theme.color.textPositive,
        FeedbackState.warning => context.theme.color.textWarning,
        FeedbackState.negative => context.theme.color.buttonDestructive,
        FeedbackState.info => context.theme.color.textPrimary,
        null => widget.style == AppTextFieldStyle.shaded
            ? _value
                ? context.theme.color.borderBlack
                : Colors.transparent
            : _value
                ? context.theme.color.buttonPrimary
                : context.theme.color.border,
      };

  Color get borderColor => switch (widget.feedbackState) {
        FeedbackState.positive => context.theme.color.textPositive,
        FeedbackState.warning => context.theme.color.textWarning,
        FeedbackState.negative => context.theme.color.buttonDestructive,
        FeedbackState.info => context.theme.color.textPrimary,
        null => widget.style == AppTextFieldStyle.shaded
            ? Colors.transparent
            : _value
                ? Colors.transparent
                : context.theme.color.borderContrast,
      };

  WidgetStatePropertyAll<Color> get backgroundColor =>
      switch (widget.feedbackState) {
        FeedbackState.positive => _value
            ? WidgetStatePropertyAll(context.theme.color.bgPositive)
            : widget.style == AppTextFieldStyle.shaded
                ? WidgetStatePropertyAll(context.theme.color.bgSurface3)
                : WidgetStatePropertyAll(context.theme.color.bgSubtlePositive),
        FeedbackState.warning => _value
            ? WidgetStatePropertyAll(context.theme.color.bgWarning)
            : widget.style == AppTextFieldStyle.shaded
                ? WidgetStatePropertyAll(context.theme.color.bgSurface3)
                : WidgetStatePropertyAll(context.theme.color.bgSubtleWarning),
        FeedbackState.negative => _value
            ? WidgetStatePropertyAll(context.theme.color.buttonDestructive)
            : widget.style == AppTextFieldStyle.shaded
                ? WidgetStatePropertyAll(context.theme.color.bgSurface3)
                : WidgetStatePropertyAll(context.theme.color.bgSubtleNegative),
        FeedbackState.info => _value
            ? WidgetStatePropertyAll(context.theme.color.bgBlue)
            : widget.style == AppTextFieldStyle.shaded
                ? WidgetStatePropertyAll(context.theme.color.bgSurface3)
                : WidgetStatePropertyAll(context.theme.color.bgSubtleBlue),
        null => widget.style == AppTextFieldStyle.shaded
            ? _value
                ? WidgetStatePropertyAll(context.theme.color.buttonFilled)
                : WidgetStatePropertyAll(context.theme.color.bgSurface3)
            : _value
                ? WidgetStatePropertyAll(context.theme.color.buttonPrimary)
                : WidgetStatePropertyAll(context.theme.color.bg),
      };

  String get textFeedbackIcon => switch (widget.feedbackState) {
        FeedbackState.info => '',
        FeedbackState.positive => '✓ ',
        FeedbackState.warning => '⚠ ',
        FeedbackState.negative => '⚠ ',
        null => '',
      };

  Color get textFeedbackColor => switch (widget.feedbackState) {
        FeedbackState.positive => context.theme.color.textPositive,
        FeedbackState.warning => context.theme.color.textWarning,
        FeedbackState.negative => context.theme.color.textNegative,
        FeedbackState.info => context.theme.color.textPrimary,
        null => context.theme.color.textPositive,
      };
}
