import 'package:utils/lib.dart';

class Debouncer {
  Debouncer({required this.cooldownDuration});

  final Duration cooldownDuration;
  Timer? _timer;
  bool _canExecute = true;

  void run(VoidCallback action) {
    if (_canExecute) {
      action(); // Execute immediately
      _canExecute = false;
      _timer?.cancel();
      _timer = Timer(cooldownDuration, () {
        _canExecute = true;
      });
    }
  }
}
