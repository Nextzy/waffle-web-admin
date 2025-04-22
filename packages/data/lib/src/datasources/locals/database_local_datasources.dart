import 'package:data/lib.dart';

class DatabaseLocalDataSources {
  DatabaseLocalDataSources({
    AppLocalDatabase? database,
    AppSecureLocalDatabase? secureDatabase,
  })  : _database = database ?? AppLocalDatabase.instance,
        _secureDatabase = secureDatabase ?? AppSecureLocalDatabase.instance;

  final AppLocalDatabase _database;
  final AppSecureLocalDatabase _secureDatabase;

  Future<List<MovieTableData>> loadMovieList() => _database.loadMovieList();

  Future<void> saveMovieList(Iterable<MovieTableData> dataList) =>
      _database.upsertMovieList(dataList);

  Future<void> saveToken({
    required String? token,
    required String? refreshToken,
  }) =>
      Future.wait([
        if (token.isNotNullOrBlank) _secureDatabase.saveToken(token!),
        if (refreshToken.isNotNullOrBlank)
          _secureDatabase.saveRefreshToken(refreshToken!),
      ]);
}
