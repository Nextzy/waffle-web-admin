import 'package:design_system/lib.dart';

class AppShadow {
  const AppShadow({
    this.baseColor = Colors.black,
  });

  final Color baseColor;

  List<BoxShadow> get xs => [
        BoxShadow(
          color: baseColor.withValues(alpha: 0.05),
          blurRadius: 2,
          offset: const Offset(0, 1),
          spreadRadius: 0,
        ),
      ];

  List<BoxShadow> get sm => [
        BoxShadow(
          color: baseColor.withValues(alpha: 0.10),
          blurRadius: 3,
          offset: const Offset(0, 1),
          spreadRadius: 0,
        ),
        BoxShadow(
          color: baseColor.withValues(alpha: 0.06),
          blurRadius: 2,
          offset: const Offset(0, 1),
          spreadRadius: -2,
        ),
      ];

  List<BoxShadow> get md => [
        BoxShadow(
          blurRadius: 8,
          spreadRadius: -2,
          offset: const Offset(0, 4),
          color: baseColor.withValues(alpha: 0.10),
        ),
        BoxShadow(
          blurRadius: 4,
          offset: const Offset(0, 2),
          spreadRadius: -2,
          color: baseColor.withValues(alpha: 0.06),
        ),
      ];

  List<BoxShadow> get lg => [
        BoxShadow(
          blurRadius: 16,
          spreadRadius: -4,
          offset: const Offset(0, 12),
          color: baseColor.withValues(alpha: 0.08),
        ),
        BoxShadow(
          blurRadius: 6,
          spreadRadius: -2,
          offset: const Offset(0, 4),
          color: baseColor.withValues(alpha: 0.03),
        ),
      ];

  List<BoxShadow> get xl => [
        BoxShadow(
          blurRadius: 24,
          offset: const Offset(0, 20),
          spreadRadius: -4,
          color: baseColor.withValues(alpha: 0.08),
        ),
        BoxShadow(
          blurRadius: 8,
          offset: const Offset(0, 8),
          spreadRadius: -4,
          color: baseColor.withValues(alpha: 0.03),
        ),
      ];

  List<BoxShadow> get xxl => [
        BoxShadow(
          blurRadius: 48,
          offset: const Offset(0, 24),
          spreadRadius: -12,
          color: baseColor.withValues(alpha: 0.18),
        ),
      ];

  List<BoxShadow> get xxxl => [
        BoxShadow(
          blurRadius: 64,
          offset: const Offset(0, 32),
          spreadRadius: -12,
          color: baseColor.withValues(alpha: 0.14),
        ),
      ];
}
