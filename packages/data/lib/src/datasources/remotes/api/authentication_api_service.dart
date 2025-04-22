import 'package:data/lib.dart';

part 'generated/authentication_api_service.g.dart';

@RestApi()
abstract class AuthenticationApiService {
  factory AuthenticationApiService(Dio dio, {String baseUrl}) =
      _AuthenticationApiService;

  @POST('/auth/emailPass')
  Future<HttpResponse<RemoteAuthenticationResponse>> signInWithEmail({
    @Body() required RemoteSignInWithEmailBody body,
  });
}
