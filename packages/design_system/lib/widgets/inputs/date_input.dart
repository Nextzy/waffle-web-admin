import 'package:design_system/lib.dart';

class AppDateInput extends AppStatefulWidget {
  const AppDateInput(
      {super.key,
      super.size,
      this.style = AppTextFieldStyle.outline,
      this.type = CalendarDatePicker2Type.single,
      this.label,
      this.placeholderText = "DD/MM/YY",
      this.feedbackState,
      this.statusText,
      this.helperText,
      this.disabled = false,
      this.readOnly = false,
      this.onChanged});

  final AppTextFieldStyle? style;
  final CalendarDatePicker2Type type;
  final String? label;
  final String? placeholderText;
  final FeedbackState? feedbackState;
  final String? statusText;
  final String? helperText;
  final bool disabled;
  final bool readOnly;

  final ValueChanged<String>? onChanged;

  @override
  AppState<AppDateInput> createState() => _AppDateInputState();
}

class _AppDateInputState extends AppState<AppDateInput> {
  final _controller = TextEditingController();
  List<DateTime?> _values = [];

  void _onPress() async {
    final values = await showCalendarDatePicker2Dialog(
      context: context,
      value: _values,
      config: CalendarDatePicker2WithActionButtonsConfig(
        calendarType: widget.type,
        weekdayLabelTextStyle: TextStyle(
          color: context.theme.color.textSecondary,
          fontSize: widgetSize == WidgetSize.sm ? 12 : 14,
          fontWeight: FontWeight.w400,
        ),
        dayTextStyle: TextStyle(
          color: context.theme.color.textPrimary,
          fontSize: widgetSize == WidgetSize.sm ? 12 : 14,
          fontWeight: FontWeight.w400,
        ),
        monthTextStyle: TextStyle(
          color: context.theme.color.textPrimary,
          fontSize: widgetSize == WidgetSize.sm ? 12 : 14,
          fontWeight: FontWeight.w400,
        ),
        yearTextStyle: TextStyle(
          color: context.theme.color.textPrimary,
          fontSize: widgetSize == WidgetSize.sm ? 12 : 14,
          fontWeight: FontWeight.w400,
        ),
        selectedDayTextStyle: TextStyle(
          color: context.theme.color.textPrimaryOnColor,
          fontSize: widgetSize == WidgetSize.sm ? 12 : 14,
          fontWeight: FontWeight.w500,
        ),
        selectedYearTextStyle: TextStyle(
          color: context.theme.color.textPrimaryOnColor,
          fontSize: widgetSize == WidgetSize.sm ? 12 : 14,
          fontWeight: FontWeight.w500,
        ),
        selectedMonthTextStyle: TextStyle(
          color: context.theme.color.textPrimaryOnColor,
          fontSize: widgetSize == WidgetSize.sm ? 12 : 14,
          fontWeight: FontWeight.w500,
        ),
        buttonPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        okButtonTextStyle: TextStyle(
          color: context.theme.color.textPrimary,
          fontSize: widgetSize == WidgetSize.sm ? 12 : 14,
          fontWeight: FontWeight.w600,
        ),
        cancelButtonTextStyle: TextStyle(
          color: context.theme.color.textPrimary,
          fontSize: widgetSize == WidgetSize.sm ? 12 : 14,
          fontWeight: FontWeight.w600,
        ),
        controlsTextStyle: TextStyle(
          color: context.theme.color.textPrimary,
          fontSize: widgetSize == WidgetSize.sm ? 12 : 14,
          fontWeight: FontWeight.w600,
        ),
        dayMaxWidth: widgetSize == WidgetSize.sm ? 24 : 32,
        lastMonthIcon: Assets.icon.caretLeftRegular.svgIcon(
          colorFilter: ColorFilter.mode(
            context.theme.color.iconPrimary,
            BlendMode.srcIn,
          ),
          size: 16,
        ),
        nextMonthIcon: Assets.icon.caretRightRegular.svgIcon(
          colorFilter: ColorFilter.mode(
            context.theme.color.iconPrimary,
            BlendMode.srcIn,
          ),
          size: 16,
        ),
        centerAlignModePicker: true,
        hideMonthPickerDividers: true,
        hideYearPickerDividers: true,
      ),
      dialogSize: const Size(325, 370),
      borderRadius: context.theme.borderRadius.md,
      dialogBackgroundColor: context.theme.color.bgPopover,
    );

    if (values != null) {
      setState(() {
        _values = values;
      });

      var firstValue = (values.isNotEmpty ? values[0] : null);
      var value = DateFormat('dd/MM/yy').format(firstValue!);
      _controller.text = value;

      if (widget.onChanged != null) {
        widget.onChanged!(value);
      }
    }
  }

  void _onTextChanged(String value) {
    try {
      final date = DateFormat('dd/MM/yy').parse(value);

      setState(() {
        _values = [date];
      });

      if (widget.onChanged != null) {
        widget.onChanged!(value);
      }
    } catch (e) {
      setState(() {
        _values = [];
      });
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ColumnLayout(
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
            padding: const EdgeInsets.symmetric(horizontal: 8),
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
                    decoration: InputDecoration(
                      hintText: widget.placeholderText,
                      hintStyle: TextStyle(
                          color: textSecondaryColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                      border: InputBorder.none,
                      isDense: true,
                    ),
                    style: TextStyle(
                        color: textPrimaryColor,
                        fontSize: widgetSize == WidgetSize.sm ? 12 : 14,
                        fontWeight: FontWeight.w400),
                    readOnly: widget.readOnly,
                  ),
                ),
                Gap(8),
                InkWell(
                  onTap: widget.disabled ? null : _onPress,
                  child: Assets.icon.calendarBlankRegular.svgIcon(
                    size: iconSize,
                    colorFilter: ColorFilter.mode(
                      context.theme.color.iconTertiary,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
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

  Color get textPrimaryColor => widget.disabled
      ? context.theme.color.textTertiary
      : context.theme.color.textPrimary;

  Color get textSecondaryColor => widget.disabled
      ? context.theme.color.textTertiary
      : context.theme.color.textSecondary;

  double get iconSize => switch (widgetSize) {
        WidgetSize.xxs => 16,
        WidgetSize.xs => 16,
        WidgetSize.sm => 16,
        WidgetSize.md => 20,
        WidgetSize.lg => 24,
        WidgetSize.xl => 24,
        WidgetSize.xxl => 24,
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
