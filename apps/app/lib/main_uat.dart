// ignore_for_file: prefer_const_declarations

import 'package:change_application_name/application.dart';
import 'package:change_application_name/environments/env_uat.dart';
import 'package:change_application_name/firebase_options_uat.dart';

void main() async {
  await setupMainUat();
  await setupFirebaseUat();
  runApplication();
}

Future<void> setupMainUat() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    setPathUrlStrategy();
    SemanticsBinding.instance.ensureSemantics();
  }
  AppEnv.initial(UatEnvironment());
  await AppLocalization.init();
  AppLocalDatabase.initDatabase();
  // AppHttpClient.instance.setupProxyAdapter(
  //     '<YOUR_IP>', '9090'); // Port: 9090 is default port for Proxyman
  // NewRelicHandler.instance.start(
  //   androidToken: F.newrelicAndroidToken,
  //   iosToken: F.newrelicIosToken,
  //   loggingEnabled: false,
  //   runApp: (){
  // },
  // );
}

Future<void> setupFirebaseUat() async {
  await Firebase.initializeApp(
    options: UatFirebaseOptions.currentPlatform,
  );
  await FirebaseRemoteConfig.instance.setConfigSettings(
    RemoteConfigSettings(
      fetchTimeout: const Duration(seconds: 30),
      minimumFetchInterval: const Duration(minutes: 5),
    ),
  );
}

Future<void> runApplication() async {
  Catcher2(
    ensureInitialized: true,
    enableLogger: false,
    releaseConfig: Catcher2Options(
      SilentReportMode(),
      [],
      filterFunction: _filterErrorFunction,
    ),
    runAppFunction: () async {
      runApp(
        MyApplication(),
      );
    },
  );
}

///========================= PRIVATE METHOD =========================///
bool _filterErrorFunction(Report report) {
  //Filter errors which shouldn't be handled and return `false`
  final error = report.error;
  if (error
      .toString()
      .contains('therefore the initial route specified will be ignored and')) {
    return false;
  }
  if (error.toString().contains('overflowed')) {
    return false;
  }

  return true;
}
