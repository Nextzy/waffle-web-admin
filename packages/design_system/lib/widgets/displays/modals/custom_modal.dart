import 'package:design_system/lib.dart';

class AppCustomModal extends AppModal {
  const AppCustomModal({
    super.key,
    required super.content,
    required super.action,
    super.backgroundColor,
    super.borderRadius,
    super.onClosed,
  }) : super(feedbackState: null);
}
