import 'package:design_system/lib.dart';

class AppSize {
  const AppSize({
    this.minWidth = 240,
    this.containerMaxWidthDesktop = 1280,
    this.paragraphMaxWidth = 720,
  });

  final double minWidth;
  final double containerMaxWidthDesktop;
  final double paragraphMaxWidth;
}
