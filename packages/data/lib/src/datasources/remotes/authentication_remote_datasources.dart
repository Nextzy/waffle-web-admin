import 'package:data/lib.dart';

class AuthenticationRemoteDatasources {
  AuthenticationRemoteDatasources({
    AuthenticationApiService? authService,
  }) : _authService =
            authService ?? AuthenticationApiService(AppHttpClient.instance.dio);

  final AuthenticationApiService _authService;

  Future<RemoteAuthenticationResponse> signInWithEmailPassword({
    required String email,
    required String password,
  }) =>
      _authService
          .signInWithEmail(
              body: RemoteSignInWithEmailBody(
            email: email,
            password: password,
          ))
          .unwrapResponse();
}
