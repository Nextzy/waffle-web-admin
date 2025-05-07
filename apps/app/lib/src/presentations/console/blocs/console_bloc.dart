import 'package:change_application_name/application.dart';

enum ConsoleEvent {
  initial,
  getProfile,
  updateProfile,
  resetPassword,
}

class ConsoleBloc extends AppBloc<ConsoleEvent, ConsoleEntity> {
  ConsoleBloc({
    GetProfileUsecase? getProfileUsecase,
    UpdateProfileUsecase? updateProfileUsecase,
    ResetPasswordUsecase? resetPasswordUsecase,
  })  : _getProfileUsecase = getProfileUsecase ?? GetProfileUsecase(),
        _updateProfileUsecase = updateProfileUsecase ?? UpdateProfileUsecase(),
        _resetPasswordUsecase = resetPasswordUsecase ?? ResetPasswordUsecase();

  final GetProfileUsecase _getProfileUsecase;
  final UpdateProfileUsecase _updateProfileUsecase;
  final ResetPasswordUsecase _resetPasswordUsecase;

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

        return _updateProfile(
          firstName: data.firstName,
          lastName: data.lastName,
          email: data.email,
          phone: data.phone,
        );
      case ConsoleEvent.resetPassword:
        final data = event.data as ({
          String email,
          String oldPassword,
          String newPassword,
        });

        return _resetPassword(
          email: data.email,
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

    var jsonRpcResponse = await _updateProfileUsecase(
      email: email,
      firstName: firstName,
      lastName: lastName,
      phone: phone,
    );

    _showResult(jsonRpcResponse);

    emitEvent(ConsolePageEvent.updateProfileSuccess);
  }

  Future<void> _resetPassword({
    required String email,
    required String oldPassword,
    required String newPassword,
  }) async {
    print('reset password: $oldPassword $newPassword');

    var jsonRpcResponse = await _resetPasswordUsecase(
      email: email,
      oldPassword: oldPassword,
      newPassword: newPassword,
    );

    _showResult(jsonRpcResponse);

    emitEvent(ConsolePageEvent.resetPasswordSuccess);
  }

  void _showResult(JsonRpcResponse jsonRpcResponse) {
    print('jsonRpcResponse: $jsonRpcResponse');

    final resultMessage = jsonRpcResponse.hasResult
        ? jsonRpcResponse.result.toString()
        : jsonRpcResponse.error?.userMessage ?? 'error';

    print('result msg: $resultMessage');

    // emitEvent(
    //   ConsolePageEvent.showResult,
    //   resultMessage,
    // );
  }
}
