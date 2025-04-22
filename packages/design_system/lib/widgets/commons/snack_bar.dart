import 'package:design_system/lib.dart';

class AppSnackbar extends SnackBar {
  const AppSnackbar({
    super.key,
    required super.content,
    super.backgroundColor = Colors.transparent,
    super.elevation = 0.0,
    super.margin,
    super.padding = const EdgeInsets.all(0.0),
    super.width,
    super.shape,
    super.hitTestBehavior,
    super.behavior,
    super.action,
    super.actionOverflowThreshold,
    super.showCloseIcon,
    super.closeIconColor,
    super.duration = const Duration(milliseconds: 3000),
    super.animation,
    super.onVisible,
    super.dismissDirection,
    super.clipBehavior = Clip.hardEdge,
  });
}
