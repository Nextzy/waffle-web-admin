import 'package:design_system/lib.dart';

class AppLightCallout extends AppCallout {
  const AppLightCallout({
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
  }) : super(accent: AppCalloutAccent.light);
}
