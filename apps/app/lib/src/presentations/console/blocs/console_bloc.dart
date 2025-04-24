import 'package:change_application_name/application.dart';
import 'package:change_application_name/src/domain/console/console.dart';

enum ConsoleEvent {
  initial,
  tapProfile,
}

class ConsoleBloc extends AppBloc<ConsoleEvent, WidgetStateEvent> {
  ConsoleBloc({
    GetProfileUsecase? getProfileUsecase,
  }) : _getProfileUsecase = getProfileUsecase ?? GetProfileUsecase();

  final GetProfileUsecase _getProfileUsecase;

  @override
  Future<void> onBlocEvent(BlocEvent<ConsoleEvent> event) async {
    switch (event.name) {
      case ConsoleEvent.initial:
        return;
      case ConsoleEvent.tapProfile:
        final data = event.data as ({
          String accessToken,
          String email,
        });

        return _getProfile(
          accessToken: data.accessToken,
          email: data.email,
        );
    }
  }

  Future<void> _getProfile({
    required accessToken,
    required email,
  }) async {
    print('get profile');

    AppHttpClient.instance.setupCredential(
      token: accessToken,
    );

    var jsonRpcResponse = await _getProfileUsecase(
      email: email,
    );

    _showResult(jsonRpcResponse);

    if (jsonRpcResponse.hasResult) {
      emitEvent(ConsolePageEvent.showProfile);
    }
  }

  void _showResult(JsonRpcResponse jsonRpcResponse) {
    print('jsonRpcResponse: ${jsonRpcResponse}');

    final resultMessage = jsonRpcResponse.hasResult
        ? jsonRpcResponse.result.toString()
        : jsonRpcResponse.error?.userMessage ?? 'error';

    emitEvent(
      ConsolePageEvent.showResult,
      resultMessage,
    );
  }
}
