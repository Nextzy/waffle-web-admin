import 'package:design_system/lib.dart';

class AppPositiveSingleInlineAlert extends AppSingleInlineAlert {
  const AppPositiveSingleInlineAlert({
    super.key,
    super.size,
    super.accent = AppAlertAccent.light,
    super.title,
    super.description,
    super.showIcon = true,
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
        content: AppPositiveSingleInlineAlert(
          title: title,
          description: description,
        ),
      ),
    );
  }
}
