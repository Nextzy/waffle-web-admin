import 'package:design_system/lib.dart';

class AppStepper extends AppStatefulWidget {
  const AppStepper({
    super.key,
    super.size = WidgetSize.md,
    this.feedbackState,
    this.defaultValue = 0,
    this.minValue = 0,
    this.maxValue = 100,
    this.style = AppTextFieldStyle.outline,
    this.disabled = false,
    this.onChanged,
  });

  final AppTextFieldStyle style;
  final FeedbackState? feedbackState;
  final int defaultValue;
  final int minValue;
  final int maxValue;
  final bool disabled;

  final ValueChanged<int>? onChanged;

  @override
  AppState<AppStepper> createState() => _AppStepperState();
}

class _AppStepperState extends AppState<AppStepper> {
  final TextEditingController _controller = TextEditingController();
  late int _value;

  @override
  void initState() {
    super.initState();
    _value = widget.defaultValue;
    _controller.text = _value.toString();
  }

  void _onChanged() {
    _controller.text = _value.toString();

    if (widget.onChanged != null) {
      widget.onChanged!(_value);
    }
  }

  void _increment() {
    if (_value < widget.maxValue) {
      setState(() {
        _value++;
      });

      _onChanged();
    }
  }

  void _decrement() {
    if (_value > widget.minValue) {
      setState(() {
        _value--;
      });

      _onChanged();
    }
  }

  void _onTextChange(String value) {
    final int newValue = int.tryParse(value) ?? widget.minValue;

    if (newValue >= widget.minValue && newValue <= widget.maxValue) {
      setState(() {
        _value = newValue;
      });

      if (_value != newValue) {
        _onChanged();
      }
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RowLayout(
      mainAxisSize: MainAxisSize.min,
      gap: widget.style == AppTextFieldStyle.shaded ? 4 : 0,
      children: [
        ContainerLayout(
          decoration: BoxDecoration(
            color: widget.disabled ? context.theme.color.bgInputDisabled : null,
            borderRadius: borderRadiusLeft,
          ),
          child: AppButton(
            text: '-',
            size: widgetSize,
            style: widget.style == AppTextFieldStyle.shaded
                ? AppButtonStyle.shaded
                : AppButtonStyle.outline,
            width: width,
            height: height,
            borderRadius: borderRadiusLeft,
            disabled: widget.disabled || _value == widget.minValue,
            onPress: _decrement,
          ),
        ),
        SizedBox(
          width: widgetSize == WidgetSize.sm ? 40 : 60,
          child: AppTextField(
            controller: _controller,
            onTextChange: _onTextChange,
            feedbackState: widget.feedbackState,
            size: widgetSize,
            style: widget.style,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            disabled: widget.disabled,
            clearButton: false,
            borderRadius: widget.style == AppTextFieldStyle.shaded
                ? BorderRadius.circular(6)
                : context.theme.borderRadius.zero,
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
            ],
          ),
        ),
        ContainerLayout(
          decoration: BoxDecoration(
            color: widget.disabled ? context.theme.color.bgInputDisabled : null,
            borderRadius: borderRadiusRight,
          ),
          child: AppButton(
            text: '+',
            size: widgetSize,
            style: widget.style == AppTextFieldStyle.shaded
                ? AppButtonStyle.shaded
                : AppButtonStyle.outline,
            width: width,
            height: height,
            borderRadius: borderRadiusRight,
            disabled: widget.disabled || _value == widget.maxValue,
            onPress: _increment,
          ),
        )
      ],
    );
  }

  double get width => switch (widgetSize) {
        WidgetSize.xxs => 28,
        WidgetSize.xs => 28,
        WidgetSize.sm => 28,
        WidgetSize.md => 37,
        WidgetSize.lg => 45,
        WidgetSize.xl => 45,
        WidgetSize.xxl => 45,
      };

  double get height => switch (widgetSize) {
        WidgetSize.xxs => 27,
        WidgetSize.xs => 27,
        WidgetSize.sm => 27,
        WidgetSize.md => 35,
        WidgetSize.lg => 43,
        WidgetSize.xl => 43,
        WidgetSize.xxl => 43,
      };

  BorderRadius get borderRadiusLeft => widget.style == AppTextFieldStyle.shaded
      ? BorderRadius.circular(6)
      : BorderRadius.only(
          topLeft: Radius.circular(6),
          bottomLeft: Radius.circular(6),
        );

  BorderRadius get borderRadiusRight => widget.style == AppTextFieldStyle.shaded
      ? BorderRadius.circular(6)
      : BorderRadius.only(
          topRight: Radius.circular(6), bottomRight: Radius.circular(6));
}
