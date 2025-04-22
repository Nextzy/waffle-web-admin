import 'package:design_system/lib.dart';

class AppTopBrandNavigationBar extends AppTopNavigationBar {
  AppTopBrandNavigationBar({
    super.key,
    super.backgroundColor,
    super.systemOverlayStyle,
    super.leadWidgets,
    super.disabled,
    super.actionWidgets,
  }) : super(type: AppNavigationType.brand);
}
