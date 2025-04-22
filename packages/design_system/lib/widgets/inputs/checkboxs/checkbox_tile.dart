import 'package:design_system/lib.dart';

class AppCheckboxTile extends AppStatefulWidget {
  const AppCheckboxTile({
    super.key,
    this.style = AppTextFieldStyle.outline,
    this.icon,
    required this.label,
    this.defaultValue = false,
    this.feedbackState,
    this.disabled = false,
    this.onChanged,
  });

  final AppTextFieldStyle style;
  final String? icon;
  final String label;
  final bool defaultValue;
  final FeedbackState? feedbackState;
  final bool disabled;

  final ValueChanged<bool?>? onChanged;

  @override
  AppState<AppCheckboxTile> createState() => _AppCheckboxTileState();
}

class _AppCheckboxTileState extends AppState<AppCheckboxTile> {
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
    return InkWell(
      onTap: widget.disabled ? null : () => _onChanged(!_value),
      child: ContainerLayout(
        width: 96,
        height: 96,
        padding: const EdgeInsets.symmetric(
          horizontal: 2,
          vertical: 2,
        ),
        decoration: BoxDecoration(
          color: cardBackgroundColor,
          border: Border.all(
            color: cardBorderColor,
          ),
          borderRadius: context.theme.borderRadius.md,
        ),
        child: Column(children: [
          if (_value)
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Checkbox(
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
                    )),
              ],
            )
          else
            Gap(32),
          ColumnLayout(
              mainAxisAlignment: MainAxisAlignment.center,
              gap: 4,
              children: [
                if (widget.icon.isNotNullOrBlank)
                  ContainerLayout(
                      child: widget.icon.toSvgIcon(
                          size: 24,
                          colorFilter: ColorFilter.mode(
                              context.theme.color.iconTertiary,
                              BlendMode.srcIn))),
                AppText(widget.label,
                    style: TextStyle(
                        color: widget.disabled
                            ? context.theme.color.textTertiary
                            : context.theme.color.textPrimary,
                        fontSize: 14,
                        fontWeight: FontWeight.w600))
              ])
        ]),
      ),
    );
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

  Color get cardBorderColor => switch (widget.feedbackState) {
        FeedbackState.positive => context.theme.color.borderPositive,
        FeedbackState.warning => context.theme.color.borderWarning,
        FeedbackState.negative => context.theme.color.borderNegative,
        FeedbackState.info => widget.style == AppTextFieldStyle.shaded
            ? Colors.transparent
            : context.theme.color.border,
        null => widget.style == AppTextFieldStyle.shaded
            ? _value
                ? context.theme.color.borderBlack
                : Colors.transparent
            : _value
                ? context.theme.color.buttonPrimary
                : context.theme.color.border,
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

  Color get cardBackgroundColor => switch (widget.style) {
        AppTextFieldStyle.outline => context.theme.color.bg,
        AppTextFieldStyle.shaded => context.theme.color.bgSurface1
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
