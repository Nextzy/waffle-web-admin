import 'package:change_application_name/application.dart';

enum ConsoleEvent {
  initial,
}

class ConsoleBloc extends AppBloc<ConsoleEvent, WidgetStateEvent> {
  @override
  Future<void> onBlocEvent(BlocEvent<ConsoleEvent> event) async {}
}
