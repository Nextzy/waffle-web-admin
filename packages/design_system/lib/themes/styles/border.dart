import 'package:design_system/lib.dart';

class AppBorder {
  const AppBorder({
    this.sm = const Border.fromBorderSide(
      BorderSide(
        width: 0.5,
        style: BorderStyle.solid,
        strokeAlign: BorderSide.strokeAlignInside,
      ),
    ),
    this.md = const Border.fromBorderSide(
      BorderSide(
        width: 1.0,
        style: BorderStyle.solid,
        strokeAlign: BorderSide.strokeAlignInside,
      ),
    ),
    this.lg = const Border.fromBorderSide(
      BorderSide(
        width: 1.5,
        style: BorderStyle.solid,
        strokeAlign: BorderSide.strokeAlignInside,
      ),
    ),
  });

  final Border sm;
  final Border md;
  final Border lg;
}
