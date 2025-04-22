import 'package:change_application_name/application.dart';

enum HomeBlocEvent { tapAddNumber }

class HomePageBloc extends AppBloc<HomeBlocEvent, HomeEntity> {
  HomePageBloc();

  final ContentSafeState<int> number = ContentSafeState.initial(0);

  @override
  Future<void> onBlocEvent(BlocEvent<HomeBlocEvent> event) async {
    switch (event.name) {
      case HomeBlocEvent.tapAddNumber:
        return _addNumber();
    }
  }

  Future<void> _addNumber() async {
    number.data = number.data + 1;
  }
}
