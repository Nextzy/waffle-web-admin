import 'package:design_system/lib.dart';

class AppRadius {
  const AppRadius({
    this.zero = const BorderRadius.all(Radius.circular(0.0)),
    this.xs = const BorderRadius.all(Radius.circular(2.0)),
    this.sm = const BorderRadius.all(Radius.circular(4.0)),
    this.md = const BorderRadius.all(Radius.circular(6.0)),
    this.lg = const BorderRadius.all(Radius.circular(8.0)),
    this.xl = const BorderRadius.all(Radius.circular(12.0)),
  });

  final BorderRadius zero;
  final BorderRadius xs;
  final BorderRadius sm;
  final BorderRadius md;
  final BorderRadius lg;
  final BorderRadius xl;
}
