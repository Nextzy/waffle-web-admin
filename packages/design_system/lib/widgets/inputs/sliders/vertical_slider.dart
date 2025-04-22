import 'package:design_system/lib.dart';

class AppVerticalSlider extends AppStatefulWidget {
  const AppVerticalSlider(
      {super.key,
      super.size = WidgetSize.md,
      this.defaultValue = 0,
      required this.min,
      required this.max,
      required this.divisions,
      this.minValueText,
      this.maxValueText,
      this.disabled = false,
      this.onChanged});

  final double defaultValue;
  final double min;
  final double max;
  final int divisions;
  final String? minValueText;
  final String? maxValueText;
  final bool disabled;

  final ValueChanged<double>? onChanged;

  @override
  AppState<AppVerticalSlider> createState() => _AppVerticalSliderState();
}

class _AppVerticalSliderState extends AppState<AppVerticalSlider> {
  double _value = 0;

  @override
  void initState() {
    super.initState();
    _value = widget.defaultValue;
  }

  void _onChanged(double value) {
    setState(() {
      _value = value;
    });

    if (widget.onChanged != null) {
      widget.onChanged!(value);
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        ColumnLayout(mainAxisAlignment: MainAxisAlignment.start, children: [
          _buildLabel(widget.minValueText ?? t.common.slider.maxValue),
          RotatedBox(
            quarterTurns: -1,
            child: SliderTheme(
              data: SliderTheme.of(context).copyWith(
                trackHeight: trackHeight,
                activeTrackColor: context.theme.color.buttonPrimary,
                inactiveTrackColor: context.theme.color.bgSurface3,
                thumbColor: context.theme.color.buttonPrimary,
                overlayShape: RoundSliderOverlayShape(overlayRadius: 16),
                overlayColor: context.theme.color.bg,
                tickMarkShape:
                    RoundSliderTickMarkShape(tickMarkRadius: tickMarkRadius),
                activeTickMarkColor: Colors.transparent,
                inactiveTickMarkColor: context.theme.color.iconTertiary,
                disabledActiveTrackColor: context.theme.color.bgSurface3,
                disabledActiveTickMarkColor: Colors.transparent,
              ),
              child: Slider(
                value: _value,
                onChanged: widget.disabled ? null : _onChanged,
                min: widget.min,
                max: widget.max,
                divisions: widget.divisions,
              ),
            ),
          ),
          _buildLabel(widget.maxValueText ?? t.common.slider.minValue),
        ])
      ],
    );
  }

  double get trackHeight => switch (widgetSize) {
        WidgetSize.xxs => 2,
        WidgetSize.xs => 2,
        WidgetSize.sm => 2,
        WidgetSize.md => 4,
        WidgetSize.lg => 8,
        WidgetSize.xl => 8,
        WidgetSize.xxl => 8,
      };

  double get tickMarkRadius => switch (widgetSize) {
        WidgetSize.xxs => 1,
        WidgetSize.xs => 1,
        WidgetSize.sm => 1,
        WidgetSize.md => 2,
        WidgetSize.lg => 2,
        WidgetSize.xl => 2,
        WidgetSize.xxl => 2,
      };

  Widget _buildLabel(String text) {
    return AppText(
      text,
      style: TextStyle(
        color: context.theme.color.textPrimary,
        fontSize: widgetSize == WidgetSize.sm ? 12 : 14,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
