import 'package:design_system/lib.dart';

class AppTimeInput extends AppStatefulWidget {
  const AppTimeInput({
    super.key,
    super.size = WidgetSize.md,
    this.style = AppTextFieldStyle.outline,
    this.label,
    this.feedbackState,
    this.statusText,
    this.hintText,
    this.disabled = false,
    this.showUnit = true,
    this.showTimeZone = true,
    this.onChanged,
  });

  final AppTextFieldStyle style;
  final String? label;
  final FeedbackState? feedbackState;
  final String? statusText;
  final String? hintText;
  final bool disabled;
  final bool showUnit;
  final bool showTimeZone;

  final ValueChanged<Map<String, dynamic>>? onChanged;

  @override
  AppState<AppTimeInput> createState() => _AppTimeInputState();
}

class _AppTimeInputState extends AppState<AppTimeInput> {
  String _hours = '';
  String _minutes = '';
  String _unit = 'AM';
  String _timeZone = 'GMT+7';

  final List<String> timeZones = [
    'GMT-12',
    'GMT-11',
    'GMT-10',
    'GMT-9',
    'GMT-8',
    'GMT-7',
    'GMT-6',
    'GMT-5',
    'GMT-4',
    'GMT-3',
    'GMT-2',
    'GMT-1',
    'GMT',
    'GMT+1',
    'GMT+2',
    'GMT+3',
    'GMT+4',
    'GMT+5',
    'GMT+6',
    'GMT+7',
    'GMT+8',
    'GMT+9',
    'GTM+10',
    'GMT+11',
    'GMT+12',
    'GMT+13',
    'GMT+14',
  ];

  void _onHoursChange(String value) {
    if (value.isNotEmpty) {
      final int hours = int.parse(value);
      if (hours <= 12) {
        setState(() {
          _hours = value;
        });
      }
    } else {
      setState(() {
        _hours = '';
      });
    }

    if (_hours.length == 2 && _minutes.length == 2) {
      _onChange();
    }

    if (_hours.length == 2) {
      FocusScope.of(context).nextFocus();
    }
  }

  void _onMinutesChange(String value) {
    if (value.isNotEmpty) {
      final int minutes = int.parse(value);
      if (minutes <= 59) {
        setState(() {
          _minutes = value;
        });
      }
    } else {
      setState(() {
        _minutes = '';
      });
    }

    if (_hours.length == 2 && _minutes.length == 2) {
      _onChange();
    }
  }

  void _selectUnit(int index) {
    setState(() {
      _unit = index == 0 ? 'AM' : 'PM';
    });

    _onChange();
  }

  void _onTimeZoneChange(String? value) {
    setState(() {
      _timeZone = value.toString();
    });

    _onChange();
  }

  void _onChange() {
    if (widget.onChanged != null) {
      widget.onChanged!({
        'hours': _hours,
        'minutes': _minutes,
        'unit': _unit,
        'timeZone': _timeZone,
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

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
        RowLayout(
          gap: 8,
          children: [
            ContainerLayout(
              width: width,
              height: height,
              decoration: BoxDecoration(
                color: backgroundColor,
                border: Border.all(
                    color: widget.disabled
                        ? context.theme.color.border
                        : borderColor),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                      child: TextFormField(
                    enabled: !widget.disabled,
                    onChanged: _onHoursChange,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: '__',
                      hintStyle: TextStyle(
                          color: textSecondaryColor,
                          fontSize: widgetSize == WidgetSize.sm ? 12 : 14,
                          fontWeight: FontWeight.w400),
                      border: InputBorder.none,
                      contentPadding: padding,
                      isDense: true,
                      counterText: '',
                    ),
                    maxLength: 2,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    style: TextStyle(
                        color: textPrimaryColor,
                        fontSize: widgetSize == WidgetSize.sm ? 12 : 14,
                        fontWeight: FontWeight.w400),
                  )),
                  Center(
                      child: AppText(':',
                          style: TextStyle(
                              color: context.theme.color.textTertiary,
                              fontSize: 14,
                              fontWeight: FontWeight.w400))),
                  Expanded(
                      child: TextFormField(
                    enabled: !widget.disabled,
                    onChanged: _onMinutesChange,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: '__',
                      hintStyle: TextStyle(
                          color: textSecondaryColor,
                          fontSize: widgetSize == WidgetSize.sm ? 12 : 14,
                          fontWeight: FontWeight.w400),
                      border: InputBorder.none,
                      contentPadding: padding,
                      isDense: true,
                      counterText: '',
                    ),
                    maxLength: 2,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    style: TextStyle(
                        color: textPrimaryColor,
                        fontSize: widgetSize == WidgetSize.sm ? 12 : 14,
                        fontWeight: FontWeight.w400),
                  )),
                ],
              ),
            ),
            if (widget.showUnit)
              ContainerLayout(
                height: height,
                decoration: BoxDecoration(
                  color: widget.style == AppTextFieldStyle.shaded
                      ? context.theme.color.bgInputShaded
                      : null,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: ToggleButtons(
                    onPressed: widget.disabled ? null : _selectUnit,
                    isSelected: [_unit == 'AM', _unit == 'PM'],
                    selectedBorderColor:
                        widget.style == AppTextFieldStyle.shaded
                            ? Colors.transparent
                            : context.theme.color.border,
                    fillColor: unitBackgroundColor,
                    borderRadius: BorderRadius.circular(6),
                    borderColor: widget.style == AppTextFieldStyle.shaded
                        ? Colors.transparent
                        : context.theme.color.border,
                    hoverColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    children: [
                      Padding(
                        padding: widgetSize == WidgetSize.sm
                            ? const EdgeInsets.all(2)
                            : const EdgeInsets.all(4),
                        child: AppText(t.common.time.am,
                            style: TextStyle(
                                color: textPrimaryColor,
                                fontSize: widgetSize == WidgetSize.sm ? 12 : 14,
                                fontWeight: _unit == 'AM'
                                    ? FontWeight.w500
                                    : FontWeight.w400)),
                      ),
                      Padding(
                        padding: widgetSize == WidgetSize.sm
                            ? const EdgeInsets.all(2)
                            : const EdgeInsets.all(4),
                        child: AppText(t.common.time.pm,
                            style: TextStyle(
                                color: textPrimaryColor,
                                fontSize: widgetSize == WidgetSize.sm ? 12 : 14,
                                fontWeight: _unit == 'PM'
                                    ? FontWeight.w500
                                    : FontWeight.w400)),
                      ),
                    ]),
              ),
            if (widget.showTimeZone)
              ContainerLayout(
                height: height,
                decoration: BoxDecoration(
                  color: widget.disabled
                      ? context.theme.color.bgInputDisabled
                      : widget.style == AppTextFieldStyle.shaded
                          ? context.theme.color.bgInputShaded
                          : null,
                  border: Border.all(
                      color: widget.style == AppTextFieldStyle.shaded
                          ? Colors.transparent
                          : context.theme.color.border),
                  borderRadius: BorderRadius.circular(6),
                ),
                padding: timeZonePadding,
                child: DropdownButton(
                  value: _timeZone,
                  onChanged: widget.disabled ? null : _onTimeZoneChange,
                  items: timeZones.map((value) {
                    return DropdownMenuItem(
                      value: value,
                      child: AppText(value,
                          style: TextStyle(
                              color: textPrimaryColor,
                              fontSize: widgetSize == WidgetSize.sm ? 12 : 14,
                              fontWeight: FontWeight.w400)),
                    );
                  }).toList(),
                  underline: ContainerLayout(),
                  isDense: true,
                ),
              )
          ],
        ),
        if (widget.statusText.isNotNullOrBlank && widget.feedbackState != null)
          AppText(
            '$textFeedbackIcon${widget.statusText}',
            style: TextStyle(
              color: textFeedbackColor,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        if (widget.hintText.isNotNullOrBlank)
          AppText(
            widget.hintText,
            style: TextStyle(
              color: context.theme.color.textSecondary,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
      ],
    );
  }

  double get width => switch (widgetSize) {
        WidgetSize.xxs => 66,
        WidgetSize.xs => 66,
        WidgetSize.sm => 66,
        WidgetSize.md => 90,
        WidgetSize.lg => 98,
        WidgetSize.xl => 98,
        WidgetSize.xxl => 98,
      };

  double get height => switch (widgetSize) {
        WidgetSize.xxs => 24,
        WidgetSize.xs => 24,
        WidgetSize.sm => 24,
        WidgetSize.md => 32,
        WidgetSize.lg => 40,
        WidgetSize.xl => 40,
        WidgetSize.xxl => 40,
      };

  EdgeInsets get padding => switch (widgetSize) {
        WidgetSize.xxs =>
          const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
        WidgetSize.xs => const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
        WidgetSize.sm => const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
        WidgetSize.md =>
          const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        WidgetSize.lg =>
          const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
        WidgetSize.xl =>
          const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
        WidgetSize.xxl =>
          const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      };

  EdgeInsets get timeZonePadding => switch (widgetSize) {
        WidgetSize.xxs =>
          const EdgeInsets.symmetric(horizontal: 6, vertical: 0),
        WidgetSize.xs => const EdgeInsets.symmetric(horizontal: 6, vertical: 0),
        WidgetSize.sm => const EdgeInsets.symmetric(horizontal: 6, vertical: 0),
        WidgetSize.md =>
          const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        WidgetSize.lg =>
          const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
        WidgetSize.xl =>
          const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
        WidgetSize.xxl =>
          const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      };

  Color get textPrimaryColor => widget.disabled
      ? context.theme.color.textTertiary
      : context.theme.color.textPrimary;

  Color get textSecondaryColor => widget.disabled
      ? context.theme.color.textTertiary
      : context.theme.color.textSecondary;

  Color get backgroundColor => switch (widget.style) {
        AppTextFieldStyle.outline => widget.disabled
            ? context.theme.color.bgInputDisabled
            : switch (widget.feedbackState) {
                FeedbackState.positive => context.theme.color.bgSubtlePositive,
                FeedbackState.warning => context.theme.color.bgSubtleWarning,
                FeedbackState.negative => context.theme.color.bgSubtleNegative,
                FeedbackState.info => context.theme.color.bgInputOutlined,
                null => context.theme.color.bgInputOutlined,
              },
        AppTextFieldStyle.shaded => widget.disabled
            ? context.theme.color.bgInputDisabled
            : context.theme.color.bgInputShaded,
      };

  Color get unitBackgroundColor => switch (widget.style) {
        AppTextFieldStyle.outline => context.theme.color.bgInputShaded,
        AppTextFieldStyle.shaded => context.theme.color.bgTab
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
