import 'package:design_system/lib.dart';

class InlineEditableText extends AppStatefulWidget {
  const InlineEditableText(
      {super.key,
      this.style = AppTextFieldStyle.outline,
      required this.text,
      this.feedbackState,
      this.disabled = false,
      this.onChanged});

  final AppTextFieldStyle style;
  final String text;
  final FeedbackState? feedbackState;
  final bool disabled;

  final ValueChanged<String>? onChanged;

  @override
  AppState<InlineEditableText> createState() => InlineEditableTextState();
}

class InlineEditableTextState extends AppState<InlineEditableText> {
  final TextEditingController _controller = TextEditingController();
  bool _editing = false;

  @override
  void initState() {
    super.initState();
    _controller.text = widget.text;
  }

  void _toggleEdit() {
    setState(() {
      _editing = !_editing;
    });
  }

  void _onSubmitted(String text) {
    setState(() {
      _editing = false;
      _controller.text = text;
    });

    if (widget.onChanged != null) {
      widget.onChanged!(text);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ContainerLayout(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: widget.style == AppTextFieldStyle.shaded
            ? context.theme.color.bgInputShaded
            : backgroundColor,
        border: widget.disabled
            ? null
            : Border.all(
                color: borderColor,
              ),
        borderRadius: context.theme.borderRadius.sm,
      ),
      child: _buildText(),
    );
  }

  Widget _buildText() {
    if (_editing) {
      return EditableText(
        controller: _controller,
        focusNode: FocusNode(),
        autofocus: true,
        style: TextStyle(
          color: context.theme.color.textPrimary,
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        cursorColor: context.theme.color.textPrimary,
        backgroundCursorColor: context.theme.color.textPrimary,
        onSubmitted: _onSubmitted,
        expands: false,
      );
    }
    return InkWell(
      onTap: widget.disabled ? null : _toggleEdit,
      child: AppText(
        _controller.text,
        style: TextStyle(
          color: widget.disabled
              ? context.theme.color.textTertiary
              : context.theme.color.textPrimary,
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }

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

  Color get backgroundColor => switch (widget.feedbackState) {
        FeedbackState.positive => context.theme.color.bgSubtlePositive,
        FeedbackState.warning => context.theme.color.bgSubtleWarning,
        FeedbackState.negative => context.theme.color.bgSubtleNegative,
        FeedbackState.info => context.theme.color.bgSubtleBlue,
        null => context.theme.color.bg,
      };
}
