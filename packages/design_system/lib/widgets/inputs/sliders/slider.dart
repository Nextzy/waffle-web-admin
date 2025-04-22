import 'package:design_system/lib.dart';

enum HorizontalSliderMinMaxPosition { none, top, side, bottom }

class AppHorizontalSlider extends AppStatefulWidget {
  const AppHorizontalSlider(
      {super.key,
      super.size = WidgetSize.md,
      this.defaultValue = 0,
      this.label,
      required this.min,
      required this.max,
      required this.divisions,
      this.helperText,
      this.minMaxPosition = HorizontalSliderMinMaxPosition.none,
      this.minValueText,
      this.maxValueText,
      this.disabled = false,
      this.onChanged});

  final double defaultValue;
  final String? label;
  final double min;
  final double max;
  final int divisions;
  final String? helperText;
  final HorizontalSliderMinMaxPosition minMaxPosition;
  final String? minValueText;
  final String? maxValueText;
  final bool disabled;

  final ValueChanged<double>? onChanged;

  @override
  AppState<AppHorizontalSlider> createState() => _AppHorizontalSliderState();
}

class _AppHorizontalSliderState extends AppState<AppHorizontalSlider> {
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

    return ColumnLayout(
      mainAxisAlignment: MainAxisAlignment.start,
      gap: 8,
      children: [
        if (widget.label.isNotNullOrBlank)
          Row(
            children: [
              AppText(widget.label,
                  style: TextStyle(
                    color: context.theme.color.textPrimary,
                    fontSize: widgetSize == WidgetSize.sm ? 12 : 14,
                    fontWeight: FontWeight.w600,
                  )),
            ],
          ),
        if (widget.minMaxPosition == HorizontalSliderMinMaxPosition.top)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildLabel(widget.minValueText ?? t.common.slider.minValue),
              _buildLabel(widget.maxValueText ?? t.common.slider.maxValue),
            ],
          ),
        RowLayout(
          children: [
            if (widget.minMaxPosition == HorizontalSliderMinMaxPosition.side)
              _buildLabel(widget.minValueText ?? t.common.slider.minValue),
            Expanded(
              child: SliderTheme(
                data: SliderTheme.of(context).copyWith(
                    trackHeight: trackHeight,
                    activeTrackColor: context.theme.color.buttonPrimary,
                    inactiveTrackColor: context.theme.color.bgSurface3,
                    thumbColor: context.theme.color.buttonPrimary,
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 16),
                    overlayColor: context.theme.color.bg,
                    tickMarkShape: RoundSliderTickMarkShape(
                        tickMarkRadius: tickMarkRadius),
                    activeTickMarkColor: Colors.transparent,
                    inactiveTickMarkColor: context.theme.color.iconTertiary,
                    disabledActiveTrackColor: context.theme.color.bgSurface3,
                    disabledActiveTickMarkColor: Colors.transparent),
                child: Slider(
                  value: _value,
                  onChanged: widget.disabled ? null : _onChanged,
                  min: widget.min,
                  max: widget.max,
                  divisions: widget.divisions,
                ),
              ),
            ),
            if (widget.minMaxPosition == HorizontalSliderMinMaxPosition.side)
              _buildLabel(widget.maxValueText ?? t.common.slider.maxValue),
          ],
        ),
        if (widget.minMaxPosition == HorizontalSliderMinMaxPosition.bottom)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildLabel(widget.minValueText ?? t.common.slider.minValue),
              _buildLabel(widget.maxValueText ?? t.common.slider.maxValue),
            ],
          ),
        if (widget.helperText.isNotNullOrBlank)
          Row(
            children: [
              AppText(widget.helperText,
                  style: TextStyle(
                    color: context.theme.color.textSecondary,
                    fontSize: widgetSize == WidgetSize.sm ? 12 : 14,
                    fontWeight: FontWeight.w400,
                  )),
            ],
          ),
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
        WidgetSize.lg => 3,
        WidgetSize.xl => 3,
        WidgetSize.xxl => 3,
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
