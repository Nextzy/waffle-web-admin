import 'package:core/core.dart';
import 'package:design_system/design_system.dart';

class AppNumberInput extends AppStatefulWidget {
  const AppNumberInput(
      {super.key,
      super.size = WidgetSize.md,
      this.style = AppTextFieldStyle.outline,
      this.width,
      this.height,
      this.label,
      this.defaultValue = 0,
      this.minValue = 0,
      this.maxValue = 100,
      this.placeholderText,
      this.feedbackState,
      this.statusText,
      this.helperText,
      this.disabled = false,
      this.readOnly = false,
      this.onChanged});

  final AppTextFieldStyle style;
  final double? width;
  final double? height;
  final String? label;
  final int defaultValue;
  final int minValue;
  final int maxValue;
  final String? placeholderText;
  final FeedbackState? feedbackState;
  final String? statusText;
  final String? helperText;
  final bool disabled;
  final bool readOnly;

  final ValueChanged<int>? onChanged;

  @override
  AppState<AppNumberInput> createState() => _AppNumberInputState();
}

class _AppNumberInputState extends AppState<AppNumberInput> {
  final TextEditingController _controller = TextEditingController();
  int _value = 0;

  @override
  void initState() {
    super.initState();
    _value = widget.defaultValue;
    _controller.text = _value.toString();
  }

  @override
  void didUpdateWidget(AppNumberInput oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.defaultValue != oldWidget.defaultValue) {
      _value = widget.defaultValue;
      _controller.text = _value.toString();
    }
  }

  void _onChange() {
    _controller.text = _value.toString();

    if (widget.onChanged != null) {
      widget.onChanged!(_value);
    }
  }

  void _increment() {
    setState(() {
      _value++;
    });

    _onChange();
  }

  void _decrement() {
    setState(() {
      _value--;
    });

    _onChange();
  }

  void _onTextChanged(String value) {
    final int newValue = int.tryParse(value) ?? widget.minValue;

    setState(() {
      if (newValue < widget.minValue) {
        _value = widget.minValue;
      } else if (newValue > widget.maxValue) {
        _value = widget.maxValue;
      } else {
        _value = newValue;
      }
    });

    _onChange();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ColumnLayout(
        width: widget.width,
        height: widget.height,
        crossAxisAlignment: CrossAxisAlignment.start,
        gap: 4,
        children: [
          if (widget.label.isNotNullOrBlank)
            AppText(
              widget.label,
              style: TextStyle(
                color: context.theme.color.textPrimary,
                fontSize: widgetSize == WidgetSize.sm ? 12 : 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ContainerLayout(
            height: height,
            padding: const EdgeInsets.only(left: 8),
            decoration: BoxDecoration(
              color: widget.style == AppTextFieldStyle.shaded
                  ? context.theme.color.bgInputShaded
                  : null,
              border: Border.all(
                color: borderColor,
              ),
              borderRadius: context.theme.borderRadius.md,
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    enabled: !widget.disabled,
                    controller: _controller,
                    onChanged: _onTextChanged,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: widget.placeholderText,
                      hintStyle: TextStyle(
                          color: textSecondaryColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                      border: InputBorder.none,
                      isDense: true,
                    ),
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    style: TextStyle(
                        color: textPrimaryColor,
                        fontSize: widgetSize == WidgetSize.sm ? 12 : 14,
                        fontWeight: FontWeight.w400),
                    readOnly: widget.readOnly,
                  ),
                ),
                Gap(8),
                ColumnLayout(
                  padding: widget.style == AppTextFieldStyle.shaded
                      ? const EdgeInsets.symmetric(horizontal: 1, vertical: 1)
                      : null,
                  decoration: BoxDecoration(
                    border: widget.style == AppTextFieldStyle.shaded
                        ? null
                        : Border(
                            left: BorderSide(
                              color: borderColor,
                            ),
                          ),
                  ),
                  children: [
                    GestureContainerLayout(
                      width: widgetSize == WidgetSize.sm ? 20 : 32,
                      mouseCursor: SystemMouseCursors.click,
                      backgroundColor: widget.style == AppTextFieldStyle.shaded
                          ? context.theme.color.buttonShade
                          : null,
                      padding: widget.style == AppTextFieldStyle.shaded
                          ? shadePadding
                          : outlinePadding,
                      margin: widget.style == AppTextFieldStyle.shaded
                          ? margin
                          : null,
                      border: widget.style == AppTextFieldStyle.shaded
                          ? null
                          : Border(
                              bottom: BorderSide(
                                color: borderColor,
                              ),
                            ),
                      borderRadius: widget.style == AppTextFieldStyle.shaded
                          ? context.theme.borderRadius.md
                          : null,
                      disabled: widget.disabled || _value == widget.maxValue,
                      opacity: widget.disabled || _value == widget.maxValue
                          ? 0.5
                          : null,
                      onPress: _increment,
                      child: Assets.icon.caretUpRegular
                          .svgIcon(size: widgetSize == WidgetSize.sm ? 9 : 12),
                    ),
                    GestureContainerLayout(
                      width: widgetSize == WidgetSize.sm ? 20 : 32,
                      mouseCursor: SystemMouseCursors.click,
                      backgroundColor: widget.style == AppTextFieldStyle.shaded
                          ? context.theme.color.buttonShade
                          : null,
                      padding: widget.style == AppTextFieldStyle.shaded
                          ? shadePadding
                          : outlinePadding,
                      borderRadius: widget.style == AppTextFieldStyle.shaded
                          ? context.theme.borderRadius.md
                          : null,
                      disabled: widget.disabled || _value == widget.minValue,
                      opacity: widget.disabled || _value == widget.minValue
                          ? 0.5
                          : null,
                      onPress: _decrement,
                      child: Assets.icon.caretDownRegular
                          .svgIcon(size: widgetSize == WidgetSize.sm ? 9 : 12),
                    ),
                  ],
                )
              ],
            ),
          ),
          if (widget.statusText.isNotNullOrBlank &&
              widget.feedbackState != null)
            AppText(
              '$textFeedbackIcon${widget.statusText}',
              style: TextStyle(
                color: textFeedbackColor,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          if (widget.helperText.isNotNullOrBlank)
            AppText(
              widget.helperText,
              style: TextStyle(
                color: context.theme.color.textSecondary,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
        ]);
  }

  double get height => switch (widgetSize) {
        WidgetSize.xxs => 24,
        WidgetSize.xs => 24,
        WidgetSize.sm => 24,
        WidgetSize.md => 32,
        WidgetSize.lg => 40,
        WidgetSize.xl => 40,
        WidgetSize.xxl => 40,
      };

  EdgeInsets get outlinePadding => switch (widgetSize) {
        WidgetSize.xxs => const EdgeInsets.symmetric(vertical: 0.7),
        WidgetSize.xs => const EdgeInsets.symmetric(vertical: 0.7),
        WidgetSize.sm => const EdgeInsets.symmetric(vertical: 0.7),
        WidgetSize.md => const EdgeInsets.symmetric(vertical: 1.2),
        WidgetSize.lg => const EdgeInsets.symmetric(vertical: 3.2),
        WidgetSize.xl => const EdgeInsets.symmetric(vertical: 3.2),
        WidgetSize.xxl => const EdgeInsets.symmetric(vertical: 3.2),
      };

  EdgeInsets get shadePadding => switch (widgetSize) {
        WidgetSize.xxs => const EdgeInsets.symmetric(vertical: 0.6),
        WidgetSize.xs => const EdgeInsets.symmetric(vertical: 0.6),
        WidgetSize.sm => const EdgeInsets.symmetric(vertical: 0.3),
        WidgetSize.md => const EdgeInsets.symmetric(vertical: 0.6),
        WidgetSize.lg => const EdgeInsets.symmetric(vertical: 2.5),
        WidgetSize.xl => const EdgeInsets.symmetric(vertical: 2.5),
        WidgetSize.xxl => const EdgeInsets.symmetric(vertical: 2.5)
      };

  EdgeInsets get margin => switch (widgetSize) {
        WidgetSize.xxs => const EdgeInsets.only(bottom: 0.5),
        WidgetSize.xs => const EdgeInsets.only(bottom: 0.5),
        WidgetSize.sm => const EdgeInsets.only(bottom: 0.5),
        WidgetSize.md => const EdgeInsets.only(bottom: 1.5),
        WidgetSize.lg => const EdgeInsets.only(bottom: 1.5),
        WidgetSize.xl => const EdgeInsets.only(bottom: 1.5),
        WidgetSize.xxl => const EdgeInsets.only(bottom: 1.5)
      };

  Color get textPrimaryColor => widget.disabled
      ? context.theme.color.textTertiary
      : context.theme.color.textPrimary;

  Color get textSecondaryColor => widget.disabled
      ? context.theme.color.textTertiary
      : context.theme.color.textSecondary;

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
