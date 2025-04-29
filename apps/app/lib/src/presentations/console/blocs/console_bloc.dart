import 'package:change_application_name/application.dart';

enum ConsoleEvent {
  initial,
  getProfile,
  updateProfile,
  changePassword,
}

class ConsoleBloc extends AppBloc<ConsoleEvent, ConsoleEntity> {
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
      case ConsoleEvent.updateProfile:
        final data = event.data as ({
          String firstName,
          String lastName,
          String email,
          String phone,
        });

        _updateProfile(
          firstName: data.firstName,
          lastName: data.lastName,
          email: data.email,
          phone: data.phone,
        );
      case ConsoleEvent.changePassword:
        final data = event.data as ({
          String oldPassword,
          String newPassword,
        });

        _changePassword(
          oldPassword: data.oldPassword,
          newPassword: data.newPassword,
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

      final console = ConsoleEntity(
        profile: profile,
      );

      emitSuccess(console);
    }
  }

  Future<void> _updateProfile({
    required String firstName,
    required String lastName,
    required String email,
    required String phone,
  }) async {
    print('update profile: $firstName $lastName $email $phone');
  }

  Future<void> _changePassword({
    required String oldPassword,
    required String newPassword,
  }) async {
    print('change password: $oldPassword $newPassword');
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
