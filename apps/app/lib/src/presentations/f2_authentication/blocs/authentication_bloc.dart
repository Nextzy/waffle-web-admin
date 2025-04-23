import 'package:change_application_name/application.dart';

enum AuthenticationEvent {
  initial,
  signInWithEmail,
}

class AuthenticationBloc
    extends AppBloc<AuthenticationEvent, WidgetStateEvent> {
  AuthenticationBloc({
    SignInWithEmailAndPasswordUsecase? signInWithEmailUsecase,
  }) : _signInWithEmailUsecase =
            signInWithEmailUsecase ?? SignInWithEmailAndPasswordUsecase();

  final SignInWithEmailAndPasswordUsecase _signInWithEmailUsecase;

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Future<void> onBlocEvent(BlocEvent<AuthenticationEvent> event) async {
    switch (event.name) {
      case AuthenticationEvent.initial:
        usernameController.text = 'patrs@email.com';
        passwordController.text = '123456';
        return;
      case AuthenticationEvent.signInWithEmail:
        final data = event.data as ({
          String email,
          String password,
        });

        return _signInWithEmailAndPassword(
          email: data.email,
          password: data.password,
        );
    }
  }

  Future<void> _signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    print('authen email password');
    print('${email} | ${password}');

    var jsonRpcResponse = await _signInWithEmailUsecase(
      email: email,
      password: password,
    );

    _showResult(jsonRpcResponse);

    // final accessToken = jsonRpcResponse.result?.accessToken ?? '';
    //
    // _getProfile(accessToken: accessToken);
  }

  // Future<void> _getProfile({
  //   required accessToken,
  // }) async {
  //   print('get profile');
  //
  //   AppHttpClient.instance.setupCredential(
  //     token: accessToken,
  //   );
  //
  //   var jsonRpcResponse = await _service.getProfile();
  //
  //   _showResult(jsonRpcResponse);
  // }

  void _showResult(JsonRpcResponse jsonRpcResponse) {
    print('jsonRpcResponse: ${jsonRpcResponse}');

    final resultMessage = jsonRpcResponse.hasResult
        ? jsonRpcResponse.result.toString()
        : jsonRpcResponse.error?.userMessage ?? 'error';

    emitEvent(
      AuthenticationPageEvent.showResult,
      resultMessage,
    );
  }
}
