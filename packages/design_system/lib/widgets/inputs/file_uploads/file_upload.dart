import 'package:design_system/lib.dart';

class AppFileUpload extends AppStatefulWidget {
  const AppFileUpload({
    super.key,
    super.size = WidgetSize.md,
    this.style = AppTextFieldStyle.outline,
    this.label,
    this.feedbackState,
    this.statusText,
    this.disabled = false,
  });

  final AppTextFieldStyle style;
  final String? label;
  final FeedbackState? feedbackState;
  final String? statusText;
  final bool disabled;

  @override
  State<AppFileUpload> createState() => _AppFileUploadState();
}

class _AppFileUploadState extends AppState<AppFileUpload> {
  void _chooseFile() {
    // TODO: Implement file picker
  }

  @override
  Widget build(BuildContext context) {
    return ColumnLayout(
        crossAxisAlignment: CrossAxisAlignment.start,
        gap: 6,
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
          Container(
            height: height,
            decoration: BoxDecoration(
              color: backgroundColor,
              border: Border.all(
                color: borderColor,
              ),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Row(
              children: [
                Expanded(
                    child: TextFormField(
                  enabled: !widget.disabled,
                  readOnly: true,
                  decoration: InputDecoration(
                    hintText: 'No file chosen',
                    hintStyle: TextStyle(
                      color: widget.disabled
                          ? context.theme.color.textTertiary
                          : context.theme.color.textSecondary,
                      fontSize: widgetSize == WidgetSize.sm ? 12 : 14,
                      fontWeight: FontWeight.w400,
                    ),
                    filled: true,
                    fillColor: backgroundColor,
                    hoverColor: Colors.transparent,
                    border: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(6),
                        bottomLeft: Radius.circular(6),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(6),
                        bottomLeft: Radius.circular(6),
                      ),
                    ),
                    contentPadding: padding,
                    isDense: true,
                  ),
                  style: TextStyle(
                    color: widget.disabled
                        ? context.theme.color.textTertiary
                        : context.theme.color.textPrimary,
                    fontSize: widgetSize == WidgetSize.sm ? 12 : 14,
                    fontWeight: FontWeight.w600,
                  ),
                )),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(
                        color: borderColor,
                      ),
                    ),
                  ),
                  child: TextButton(
                      onPressed: widget.disabled ? null : _chooseFile,
                      style: ButtonStyle(
                        padding: WidgetStatePropertyAll(padding),
                        backgroundColor:
                            WidgetStatePropertyAll(backgroundColor),
                        overlayColor:
                            WidgetStatePropertyAll(Colors.transparent),
                        shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(6),
                            bottomRight: Radius.circular(6),
                          ),
                        )),
                        minimumSize: WidgetStatePropertyAll(Size(0, 56)),
                      ),
                      child: Text(
                        'Choose file',
                        style: TextStyle(
                          color: widget.disabled
                              ? context.theme.color.textTertiary
                              : context.theme.color.textPrimary,
                          fontSize: widgetSize == WidgetSize.sm ? 12 : 14,
                          fontWeight: FontWeight.w600,
                        ),
                      )),
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

  EdgeInsets get padding => switch (widgetSize) {
        WidgetSize.xxs =>
          const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        WidgetSize.xs =>
          const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        WidgetSize.sm =>
          const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        WidgetSize.md =>
          const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        WidgetSize.lg =>
          const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        WidgetSize.xl =>
          const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        WidgetSize.xxl =>
          const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      };

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

  Color get borderColor => switch (widget.style) {
        AppTextFieldStyle.outline => widget.disabled
            ? context.theme.color.border
            : switch (widget.feedbackState) {
                FeedbackState.positive => context.theme.color.borderPositive,
                FeedbackState.warning => context.theme.color.borderWarning,
                FeedbackState.negative => context.theme.color.borderNegative,
                FeedbackState.info => context.theme.color.border,
                null => context.theme.color.border,
              },
        AppTextFieldStyle.shaded => widget.disabled
            ? context.theme.color.border
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
