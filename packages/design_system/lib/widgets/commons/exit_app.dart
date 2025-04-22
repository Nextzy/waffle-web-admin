import 'package:design_system/lib.dart';

class ExitApp extends AppStatefulWidget {
  const ExitApp({
    super.key,
    this.doubleTapExit = true,
    this.duration = const Duration(seconds: 1),
    required this.onExit,
    required this.child,
  });

  final bool doubleTapExit;
  final Duration duration;
  final Widget child;
  final Function() onExit;

  @override
  State<ExitApp> createState() => _ExitAppState();
}

class _ExitAppState extends AppState<ExitApp> {
  DateTime? _lastPressedAt;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) async {
        if (kIsWeb) {
          await widget.onExit();
          SystemNavigator.pop();
          return;
        }
        if (didPop) {
          await widget.onExit();
          SystemNavigator.pop();
          return;
        } else {
          final now = DateTime.now();
          if (widget.doubleTapExit) {
            if (_lastPressedAt == null ||
                now.difference(_lastPressedAt!) > widget.duration) {
              _lastPressedAt = now;
              //TODO:
              Log.i(Strings.common.alert.info.doubleTapExit);
              // AppToast.show(Strings.common.alert.info.doubleTapExit);
              return;
            }
          }
          await widget.onExit();
          SystemNavigator.pop();
        }
      },
      child: widget.child,
    );
  }
}
