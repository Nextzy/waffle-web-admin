import 'package:design_system/lib.dart';

class AppInfoInlineAlert extends AppInlineAlert {
  const AppInfoInlineAlert({
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
  }) : super(feedbackState: FeedbackState.info);

  static void show(
      BuildContext context, {
        String? title,
        String? description,
      }) {
    ScaffoldMessenger.of(context).showSnackBar(
      AppSnackbar(
        content: AppInfoInlineAlert(
          title: title,
          description: description,
        ),
      ),
    );
  }
}
