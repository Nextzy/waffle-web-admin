import 'package:data/lib.dart';

part 'generated/movie_api_service.g.dart';

@RestApi()
abstract class MovieApiService {
  factory MovieApiService(Dio dio, {String baseUrl}) = _MovieApiService;

  @GET('/movies/high-light')
  @RequiredAuth()
  @MockId(mockId: 1)
  Future<HttpResponse<RemoteMovieListResponse>> getHighLightMovieList();

  @GET('/movies/trend')
  @RequiredAuth()
  @MockId(mockId: 1)
  Future<HttpResponse<RemoteMovieListResponse>> getTrendMovieList();

  @GET('/movies/must-watch')
  @RequiredAuth()
  @MockId(mockId: 1)
  Future<HttpResponse<RemoteMovieListResponse>> getMustWatchMovieList();
}
