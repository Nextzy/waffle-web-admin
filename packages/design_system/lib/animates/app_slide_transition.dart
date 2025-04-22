import 'package:design_system/lib.dart';

class AppScreenTransition<T> extends ScreenTransition<T> {

  AppScreenTransition(Widget page, {
    super.key,
    super.childCurrent,
    super.type = ScreenTransitionType.rightToLeft,
    super.inheritTheme,
    super.curve = Curves.easeInOutQuint,
    super.alignment,
    super.duration = const Duration(milliseconds: 350),
    super.reverseDuration = const Duration(milliseconds: 200),
    super.fullscreenDialog,
    super.settings,
  }) : super(
    child: page,
  );
}