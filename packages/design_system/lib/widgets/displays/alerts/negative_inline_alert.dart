import 'package:design_system/lib.dart';

class AppNegativeInlineAlert extends AppInlineAlert {
  const AppNegativeInlineAlert({
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
  }) : super(feedbackState: FeedbackState.negative);

  static void show(
    BuildContext context, {
    String? title,
    String? description,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      AppSnackbar(
        content: AppNegativeInlineAlert(
          title: title,
          description: description,
        ),
      ),
    );
  }
}
