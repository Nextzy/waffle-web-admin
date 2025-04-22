import 'package:core/core.dart' hide Logger, Level;

class DefaultCatcherLogger extends Catcher2Logger {
  @override
  void setup() {}

  ///Log info message.
  @override
  Future<void> info(String message) async {
    debugPrint(message);
  }

  ///Log fine message.
  @override
  void fine(String message) {
    debugPrint(message);
  }

  ///Log warning message.
  @override
  void warning(String message) {
    debugPrint(message);
  }

  ///Log severe mesasge.
  @override
  void severe(String message) {
    debugPrint(message);
  }
}
