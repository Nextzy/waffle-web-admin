import 'package:design_system/lib.dart';

class AppRadioTile<T> extends AppStatefulWidget {
  const AppRadioTile({
    super.key,
    this.style = AppTextFieldStyle.outline,
    this.icon,
    required this.label,
    required this.value,
    required this.defaultValue,
    this.feedbackState,
    this.disabled = false,
    this.onChanged,
  });

  final AppTextFieldStyle style;
  final String? icon;
  final String label;
  final T value;
  final T defaultValue;
  final FeedbackState? feedbackState;
  final bool disabled;

  final ValueChanged<T?>? onChanged;

  @override
  AppState<AppRadioTile<T>> createState() => _AppRadioTileState<T>();
}

class _AppRadioTileState<T> extends AppState<AppRadioTile<T>> {
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
    return InkWell(
      onTap: widget.disabled ? null : () => _onChanged(widget.value),
      child: ContainerLayout(
        width: 96,
        height: 96,
        padding: const EdgeInsets.symmetric(
          horizontal: 2,
          vertical: 2,
        ),
        decoration: BoxDecoration(
          color: backgroundColor,
          border: Border.all(
            color: borderColor,
          ),
          borderRadius: context.theme.borderRadius.md,
        ),
        child: Column(children: [
          if (_value == widget.value)
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Radio(
                  value: widget.value,
                  groupValue: _value,
                  onChanged: widget.disabled ? null : _onChanged,
                  activeColor: activeColor,
                  overlayColor: WidgetStatePropertyAll(Colors.transparent),
                ),
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
            ? _value == widget.value
                ? context.theme.color.borderBlack
                : Colors.transparent
            : _value == widget.value
                ? context.theme.color.buttonPrimary
                : context.theme.color.border,
      };

  Color get activeColor => switch (widget.feedbackState) {
        FeedbackState.positive => context.theme.color.textPositive,
        FeedbackState.warning => context.theme.color.textWarning,
        FeedbackState.negative => context.theme.color.buttonDestructive,
        FeedbackState.info => context.theme.color.textPrimary,
        null => widget.style == AppTextFieldStyle.shaded
            ? context.theme.color.buttonFilledActive
            : context.theme.color.buttonPrimary,
      };
}
