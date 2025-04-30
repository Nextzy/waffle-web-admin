import 'package:change_application_name/application.dart';

enum RolesEvent {
  initial,
}

class RolesBloc extends AppBloc<RolesEvent, dynamic> {
  RolesBloc();

  @override
  Future<void> onBlocEvent(BlocEvent<RolesEvent> event) async {
    switch (event) {}
  }
}
