import 'package:design_system/lib.dart';

class AppTopBackNavigationBar extends AppTopNavigationBar {
  AppTopBackNavigationBar({
    super.key,
    super.title,
    super.border,
    super.textAlign = TextAlign.center,
    super.backgroundColor,
    super.showBackButtonWhenCanPop = false,
    super.disabled,
    super.leadWidgets,
    super.actionWidgets,
  }) : super(type: AppNavigationType.back);
}
