import 'package:design_system/lib.dart';

class AppInfoSingleInlineAlert extends AppSingleInlineAlert {
  const AppInfoSingleInlineAlert({
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
  }) : super(feedbackState: FeedbackState.info);

  static void show(
      BuildContext context, {
        String? title,
        String? description,
      }) {
    ScaffoldMessenger.of(context).showSnackBar(
      AppSnackbar(
        content: AppInfoSingleInlineAlert(
          title: title,
          description: description,
        ),
      ),
    );
  }
}
