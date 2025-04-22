import 'package:design_system/lib.dart';

part 'generated/filter.freezed.dart';

@freezed
abstract class AppImageFilter with _$AppImageFilter {
  const AppImageFilter._();

  const factory AppImageFilter({
    @Default(0.0) double sigmaX,
    @Default(0.0) double sigmaY,
    @Default(TileMode.clamp) TileMode tileMode,
  }) = _AppImageFilter;

  ImageFilter get blur => ImageFilter.blur(
        sigmaX: sigmaX,
        sigmaY: sigmaY,
        tileMode: tileMode,
      );
}

class AppFilter {
  const AppFilter({
    this.sm = const AppImageFilter(
      sigmaX: 2,
      sigmaY: 2,
      tileMode: TileMode.clamp,
    ),
  });

  final AppImageFilter sm;
}
