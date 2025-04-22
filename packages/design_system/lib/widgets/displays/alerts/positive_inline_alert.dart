import 'package:design_system/lib.dart';

class AppPositiveInlineAlert extends AppInlineAlert {
  const AppPositiveInlineAlert({
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
  }) : super(feedbackState: FeedbackState.positive);

  static void show(
    BuildContext context, {
    String? title,
    String? description,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      AppSnackbar(
        content: AppPositiveInlineAlert(
          title: title,
          description: description,
        ),
      ),
    );
  }
}
