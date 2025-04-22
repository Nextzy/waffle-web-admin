import 'package:design_system/lib.dart';

class AppComboBox extends AppStatefulWidget {
  const AppComboBox({
    super.key,
    super.size = WidgetSize.md,
    this.style = AppTextFieldStyle.outline,
    required this.items,
    this.placeholderText,
    this.feedbackState,
    this.statusText,
    this.helperText,
    this.disabled = false,
    this.onChanged,
  });

  final AppTextFieldStyle style;
  final List<String> items;
  final String? placeholderText;
  final FeedbackState? feedbackState;
  final String? statusText;
  final String? helperText;
  final bool disabled;

  final ValueChanged<String>? onChanged;

  @override
  AppState<AppComboBox> createState() => _AppComboBoxState();
}

class _AppComboBoxState extends AppState<AppComboBox> {
  final TextEditingController _controller = TextEditingController();
  bool _showDropdown = false;

  List<String> _filteredItems = [];

  @override
  void initState() {
    super.initState();
    _filteredItems = widget.items;
  }

  void _onTextChanged(String value) {
    setState(() {
      _filteredItems = widget.items
          .where(
              (element) => element.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
    _showDropdown = true;
  }

  void _onSelectItem(String value) {
    _controller.text = value;
    setState(() {
      _showDropdown = false;
    });

    if (widget.onChanged != null) {
      widget.onChanged!(value);
    }
  }

  void _toggleDropdown() {
    setState(() {
      _showDropdown = !_showDropdown;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ColumnLayout(
      mainAxisAlignment: MainAxisAlignment.start,
      gap: 4,
      children: [
        ColumnLayout(gap: 4, children: [
          Row(
            children: [
              Expanded(
                child: ContainerLayout(
                    height: height,
                    padding: padding,
                    decoration: BoxDecoration(
                      color: widget.style == AppTextFieldStyle.shaded
                          ? context.theme.color.bgInputShaded
                          : null,
                      border: Border.all(
                        color: borderColor,
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(6),
                        bottomLeft: Radius.circular(6),
                      ),
                    ),
                    child: TextFormField(
                      enabled: !widget.disabled,
                      controller: _controller,
                      onChanged: _onTextChanged,
                      decoration: InputDecoration(
                        hintText: widget.placeholderText,
                        hintStyle: TextStyle(
                          color: textSecondaryColor,
                          fontSize: widgetSize == WidgetSize.sm ? 12 : 14,
                          fontWeight: FontWeight.w400,
                        ),
                        border: InputBorder.none,
                        isDense: true,
                      ),
                      style: TextStyle(
                        color: textPrimaryColor,
                        fontSize: widgetSize == WidgetSize.sm ? 12 : 14,
                        fontWeight: FontWeight.w400,
                      ),
                    )),
              ),
              GestureContainerLayout(
                height: height,
                padding: const EdgeInsets.symmetric(horizontal: 8),
                backgroundColor: widget.style == AppTextFieldStyle.shaded
                    ? context.theme.color.bgInputShaded
                    : null,
                border: Border(
                  top: BorderSide(
                    color: widget.style == AppTextFieldStyle.shaded
                        ? Colors.transparent
                        : context.theme.color.border,
                  ),
                  right: BorderSide(
                    color: widget.style == AppTextFieldStyle.shaded
                        ? Colors.transparent
                        : context.theme.color.border,
                  ),
                  bottom: BorderSide(
                    color: widget.style == AppTextFieldStyle.shaded
                        ? Colors.transparent
                        : context.theme.color.border,
                  ),
                ),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(6),
                  bottomRight: Radius.circular(6),
                ),
                onPress: _toggleDropdown,
                child: _showDropdown
                    ? Assets.icon.caretUpRegular.svgIcon(
                        size: widgetSize == WidgetSize.sm ? 12 : 16,
                        colorFilter: ColorFilter.mode(
                          context.theme.color.iconSecondary,
                          BlendMode.srcIn,
                        ),
                      )
                    : Assets.icon.caretDownRegular.svgIcon(
                        size: widgetSize == WidgetSize.sm ? 12 : 16,
                        colorFilter: ColorFilter.mode(
                          context.theme.color.iconSecondary,
                          BlendMode.srcIn,
                        ),
                      ),
              ),
            ],
          ),
          if (_showDropdown)
            Material(
              elevation: 4,
              child: SizedBox(
                height: 200,
                child: ListView.builder(
                  itemCount: _filteredItems.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: AppText(_filteredItems[index]),
                      onTap: () => _onSelectItem(_filteredItems[index]),
                    );
                  },
                ),
              ),
            ),
        ]),
        if (widget.statusText.isNotNullOrBlank && widget.feedbackState != null)
          Row(
            children: [
              AppText(
                '$textFeedbackIcon${widget.statusText}',
                style: TextStyle(
                  color: textFeedbackColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        if (widget.helperText.isNotNullOrBlank)
          Row(
            children: [
              AppText(
                widget.helperText,
                style: TextStyle(
                  color: context.theme.color.textSecondary,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          )
      ],
    );
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

  EdgeInsets get padding => switch (widgetSize) {
        WidgetSize.xxs =>
          const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
        WidgetSize.xs => const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
        WidgetSize.sm => const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
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
