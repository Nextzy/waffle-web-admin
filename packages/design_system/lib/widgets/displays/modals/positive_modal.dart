import 'package:design_system/lib.dart';

class AppPositiveModal extends AppModal {
  const AppPositiveModal({
    super.key,
    super.title,
    super.description,
    super.content,
    super.contentAlign,
    super.icon,
    super.image,
    super.backgroundColor,
    super.action,
    super.actionAlign,
    super.borderRadius,
    super.onClosed,
    super.buttonPrimaryText,
    super.buttonSecondaryText,
    super.buttonTertiaryText,
    super.onPrimaryPress,
    super.onSecondaryPress,
    super.onTertiaryPress,
  }) : super(feedbackState: FeedbackState.positive);
}
