import 'package:design_system/lib.dart';

class WebZoom extends AppStatelessWidget {
  const WebZoom({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (PlatformChecker.isNotWeb) return child;

    return InteractiveViewer(
      clipBehavior: Clip.none,
      child: child,
    );
  }
}
