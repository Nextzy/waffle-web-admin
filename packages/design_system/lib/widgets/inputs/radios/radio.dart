import 'package:design_system/lib.dart';

enum AppRadioPosition { left, right }

class AppRadio<T> extends AppStatefulWidget {
  const AppRadio(
      {super.key,
      super.size = WidgetSize.md,
      this.style = AppTextFieldStyle.outline,
      this.position = AppRadioPosition.left,
      required this.label,
      required this.value,
      required this.defaultValue,
      this.feedbackState,
      this.statusText,
      this.helperText,
      this.disabled = false,
      this.onChanged});

  final AppTextFieldStyle style;
  final AppRadioPosition position;
  final String label;
  final T value;
  final T defaultValue;
  final FeedbackState? feedbackState;
  final String? statusText;
  final String? helperText;
  final bool disabled;

  final ValueChanged<T?>? onChanged;

  @override
  AppState<AppRadio<T>> createState() => _AppRadioState<T>();
}

class _AppRadioState<T> extends AppState<AppRadio<T>> {
  late T _value;

  @override
  void initState() {
    super.initState();
    _value = widget.defaultValue;
  }

  void _onChanged(T? value) {
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
    return ColumnLayout(
      mainAxisAlignment: MainAxisAlignment.start,
      gap: 4,
      children: [
        Row(
          mainAxisAlignment: widget.position == AppRadioPosition.left
              ? MainAxisAlignment.start
              : MainAxisAlignment.spaceBetween,
          children: [
            if (widget.position == AppRadioPosition.left) _buildRadio(),
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
            if (widget.position == AppRadioPosition.right) _buildRadio(),
          ],
        ),
        if (widget.helperText.isNotNullOrBlank)
          Padding(
            padding: widget.position == AppRadioPosition.right
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
        if (widget.statusText.isNotNullOrBlank && widget.feedbackState != null)
          Row(
            children: [
              Padding(
                padding: widget.position == AppRadioPosition.right
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
    );
  }

  Widget _buildRadio() {
    return Radio(
      value: widget.value,
      groupValue: _value,
      onChanged: widget.disabled ? null : _onChanged,
      activeColor: activeColor,
      overlayColor: WidgetStatePropertyAll(Colors.transparent),
    );
  }

  Color get activeColor => switch (widget.feedbackState) {
        FeedbackState.positive => context.theme.color.textPositive,
        FeedbackState.warning => context.theme.color.textWarning,
        FeedbackState.negative => context.theme.color.buttonDestructive,
        FeedbackState.info => context.theme.color.textPrimary,
        null => widget.style == AppTextFieldStyle.shaded
            ? _value == widget.value
                ? context.theme.color.borderBlack
                : Colors.transparent
            : _value == widget.value
                ? context.theme.color.buttonPrimary
                : context.theme.color.border,
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
