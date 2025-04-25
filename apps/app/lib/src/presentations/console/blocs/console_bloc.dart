import 'package:change_application_name/application.dart';

enum ConsoleEvent {
  initial,
  getProfile,
}

class ConsoleBloc extends AppBloc<ConsoleEvent, ProfileEntity> {
  ConsoleBloc({
    GetProfileUsecase? getProfileUsecase,
  }) : _getProfileUsecase = getProfileUsecase ?? GetProfileUsecase();

  final GetProfileUsecase _getProfileUsecase;

  @override
  Future<void> onBlocEvent(BlocEvent<ConsoleEvent> event) async {
    switch (event.name) {
      case ConsoleEvent.initial:
        return;
      case ConsoleEvent.getProfile:
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
    AppHttpClient.instance.setupCredential(
      token: accessToken,
    );

    var jsonRpcResponse = await _getProfileUsecase(
      email: email,
    );

    _showResult(jsonRpcResponse);

    if (jsonRpcResponse.hasResult) {
      final profile = ProfileEntity.fromResponse(jsonRpcResponse.result!);

      emitSuccess(profile);
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
