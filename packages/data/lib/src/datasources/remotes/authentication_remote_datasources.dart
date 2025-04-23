import 'package:data/lib.dart';

class AuthenticationRemoteDatasources {
  AuthenticationRemoteDatasources({
    AuthenticationRpcService? authService,
  }) : _authService =
            authService ?? AuthenticationRpcService(AppHttpClient.instance.dio);

  final AuthenticationRpcService _authService;

  Future<JsonRpcResponse<RemoteAuthenticationResponse, ErrorResponse>>
      signInWithEmailPassword({
    required String email,
    required String password,
  }) async {
    print('authen email password');
    print('${email} | ${password}');

    return _authService.signInWithEmailPassword(
      email: email,
      password: password,
    );
  }
}
