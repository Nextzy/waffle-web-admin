import 'package:localization/lib.dart';

class AppLocalization {
  static const _localeKey = "locale_key";

  static Future<AppLocale> init() async {
    AppLocale locale = await loadLocale();

    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(_localeKey, locale.languageCode);

    return locale;
  }

  static Future<AppLocale> loadLocale() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final langCode = prefs.getString(_localeKey);

    if (langCode != null && langCode.isNotEmpty) {
      try {
        return AppLocaleUtils.parseLocaleParts(languageCode: langCode);
      } catch (_) {
        debugPrint('Error parsing locale: $langCode');
        return await LocaleSettings.useDeviceLocale();
      }
    } else {
      return await LocaleSettings.useDeviceLocale();
    }
  }

  static Future<AppLocale> changeLocale(AppLocale locale) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(_localeKey, locale.languageCode);

    return LocaleSettings.setLocale(locale);
  }
}
