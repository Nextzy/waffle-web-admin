import 'package:data/lib.dart';

class AppSecureLocalDatabase {
  static const tokenKey = 'tokenKey';
  static const refreshTokenKey = 'refreshTokenKey';
  final SecureStorage _secureStorage;

  static const AppSecureLocalDatabase instance =
      AppSecureLocalDatabase._singleton();

  const AppSecureLocalDatabase._singleton(
      {SecureStorage secureStorage = SecureStorage.instance})
      : _secureStorage = secureStorage;

  Future<void> saveToken(String token) =>
      _secureStorage.save(tokenKey, data: token);

  Future<void> saveRefreshToken(String token) =>
      _secureStorage.save(refreshTokenKey, data: token);

  Future<String?> loadToken() => _secureStorage.load(tokenKey);

  Future<String?> loadRefreshToken() => _secureStorage.load(refreshTokenKey);

  Future<void> deleteAll() => _secureStorage.deleteAll();
}