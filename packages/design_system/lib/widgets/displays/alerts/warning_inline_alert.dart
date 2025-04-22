import 'package:design_system/lib.dart';

class AppWarningInlineAlert extends AppInlineAlert {
  const AppWarningInlineAlert({
    super.key,
    super.size,
    super.accent,
    super.title,
    super.description,
    super.showIcon,
    super.action,
    super.buttonPrimaryText,
    super.buttonSecondaryText,
    super.onPrimaryPress,
    super.onSecondaryPress,
    super.onClosed,
  }) : super(feedbackState: FeedbackState.warning);

  static void show(
      BuildContext context, {
        String? title,
        String? description,
      }) {
    ScaffoldMessenger.of(context).showSnackBar(
      AppSnackbar(
        content: AppWarningInlineAlert(
          title: title,
          description: description,
        ),
      ),
    );
  }
}
