import 'package:utils/lib.dart';
import 'package:encrypt/encrypt.dart' as encrypt;

final encrypter = RouteEncryptUtils();

class RouteEncryptUtils {
  RouteEncryptUtils({
    String key = 'dWzMB3FMioSkG0njjSJYRXsRyZ49vtU',
    String ivKey = 'ZkD9MhoIhBG5hMs1',
  })  : _iv = IV.fromUtf8(ivKey),
        _encrypter = Encrypter(
          AES(
            encrypt.Key.fromUtf8(key),
            mode: AESMode.cbc,
          ),
        );

  final IV _iv; // length-16
  final Encrypter _encrypter;

  String encode(String data) => _encrypter.encrypt(data, iv: _iv).base64;

  String decode(String base64) => _encrypter.decrypt64(base64, iv: _iv);
}

abstract class RouteEncrypt<T> {
  final RouteEncryptUtils encrypter = RouteEncryptUtils();

  Map<String, dynamic> toJson();

  T fromJson(Map<String, dynamic> json);

  String encode(String value) {
    try {
      return encrypter.encode(value);
    } catch (e) {
      Log.e('RouteEncrypt encode: $value > $e');

      return '';
    }
  }

  String? decode(String base64) {
    try {
      return encrypter.decode(base64.replaceAll(' ', '+'));
    } catch (e) {
      Log.e('RouteEncrypt decode: $base64 > $e');

      return null;
    }
  }

  T copyWith();
}
