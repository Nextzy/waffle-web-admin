import 'package:design_system/lib.dart';

class AppCustomActionModal extends AppModal {
  const AppCustomActionModal({
    super.key,
    super.title,
    super.description,
    super.content,
    super.contentAlign,
    super.icon,
    super.image,
    super.backgroundColor,
    required super.action,
    super.borderRadius,
    super.onClosed,
  }) : super(feedbackState: null);
}
