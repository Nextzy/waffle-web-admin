import 'package:design_system/lib.dart';

class AppNegativeSingleInlineAlert extends AppSingleInlineAlert {
  const AppNegativeSingleInlineAlert({
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
  }) : super(feedbackState: FeedbackState.negative);

  static void show(
    BuildContext context, {
    String? title,
    String? description,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      AppSnackbar(
        content: AppNegativeSingleInlineAlert(
          title: title,
          description: description,
        ),
      ),
    );
  }
}
