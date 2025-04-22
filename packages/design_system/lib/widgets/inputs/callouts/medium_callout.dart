import 'package:design_system/lib.dart';

class AppMediumCallout extends AppCallout {
  const AppMediumCallout({
    super.key,
    super.size,
    super.title,
    super.description,
    super.icon,
    super.action,
    super.buttonPrimaryText,
    super.buttonSecondaryText,
    super.onPrimaryPress,
    super.onSecondaryPress,
  }) : super(accent: AppCalloutAccent.medium);
}
