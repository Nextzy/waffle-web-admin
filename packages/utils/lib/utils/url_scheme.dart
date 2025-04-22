import 'package:utils/lib.dart';

class AppUrlScheme {
  static Future<void> launchLine({required String? lineId}) {
    if (lineId.isNullOrEmpty) return Future(() => null);
    final url = 'https://line.me/ti/p/~$lineId';
    Log.i(url);

    return launchExternalApp(Uri.parse(url));
  }

  static Future<void> launchFacebook({required String? facebookId}) {
    if (facebookId.isNullOrEmpty) return Future(() => null);
    const prefixUri = 'fb://profile/';
    const prefixWeb = 'https://facebook.com/';

    return launchExternalApp(Uri.parse('$prefixWeb$facebookId'));
  }

  static Future<void> launchLinkedin({required String? linkedinId}) {
    if (linkedinId.isNullOrEmpty) return Future(() => null);
    final url = 'https://www.linkedin.com/in/$linkedinId/';
    Log.i(url);

    return launchExternalApp(Uri.parse(url));
  }

  static Future<void> launchInstagram({required String? instagramId}) {
    if (instagramId.isNullOrEmpty) return Future(() => null);
    final url = 'https://www.instagram.com/$instagramId';
    Log.i(url);

    return launchExternalApp(Uri.parse(url));
  }

  static Future<bool> canLaunch(Uri uri) {
    return canLaunchUrl(uri);
  }

  static Future<void> launchExternalApp(Uri uri) async {
    if (await canLaunchUrl(uri)) {
      try {
        bool launched = await launchUrl(
          uri,
          mode: LaunchMode.externalApplication,
        ); // Launch the app if installed!

        if (!launched) {
          launchUrl(uri); // Launch web view if app is not installed!
        }
      } catch (e) {
        Log.e('error: $e');
        launchUrl(uri); // Launch web view if app is not installed!
      }
    } else {
      Log.w('Cannot launch this uri: $uri');
    }
  }
}
