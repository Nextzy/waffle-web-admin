import 'package:data/lib.dart';

class MovieRemoteDatasources {
  MovieRemoteDatasources({
    MovieApiService? movieService,
  }) : _movieService =
            movieService ?? MovieApiService(AppHttpClient.instance.dio);

  final MovieApiService _movieService;

  Future<
      ({
        RemoteMovieListResponse hightLightMovieList,
        RemoteMovieListResponse trendMovieList,
        RemoteMovieListResponse mustWatchMovieList
      })> getMovieList() => Future.wait([
        _movieService.getHighLightMovieList(),
        _movieService.getTrendMovieList(),
        _movieService.getMustWatchMovieList(),
      ]).then(
        (resultList) => (
          hightLightMovieList: resultList[0].data,
          trendMovieList: resultList[1].data,
          mustWatchMovieList: resultList[2].data,
        ),
      );
}
