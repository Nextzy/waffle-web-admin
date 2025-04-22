import 'package:design_system/lib.dart';

class AppTextArea extends AppTextField {
  const AppTextArea({
    super.key,
    super.style,
    super.feedbackState,
    super.label,
    super.text,
    super.required,
    super.placeholderText,
    super.helperText,
    super.statusText,
    super.maxLines = 4,
    super.maxLength,
    super.disabled,
    super.clearButton = false,
    super.onTextChange,
    super.textInputAction,
    super.controller,
    super.focusNode,
    super.onFocusedChange,
    super.onEditingComplete,
  }) : super();
}
