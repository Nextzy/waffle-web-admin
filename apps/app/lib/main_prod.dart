import 'package:change_application_name/application.dart';
import 'package:change_application_name/environments/env_prod.dart';
import 'package:change_application_name/firebase_options_prod.dart';

void main() async {
  await setupMainProd();
  await setupFirebaseProd();
  runApplication();
}

Future<void> setupMainProd() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    setPathUrlStrategy();
    SemanticsBinding.instance.ensureSemantics();
  }
  AppEnv.initial(ProdEnvironment());
  await AppLocalization.init();
  AppLocalDatabase.initDatabase();
}

Future<void> setupFirebaseProd() async {
  await Firebase.initializeApp(
    options: ProdFirebaseOptions.currentPlatform,
  );
  await FirebaseRemoteConfig.instance.setConfigSettings(
    RemoteConfigSettings(
      fetchTimeout: const Duration(seconds: 30),
      minimumFetchInterval: const Duration(minutes: 5),
    ),
  );
}

Future<void> runApplication() async {

  // NewRelicHandler.instance.start(
  //   androidToken: F.newrelicAndroidToken,
  //   iosToken: F.newrelicIosToken,
  //   loggingEnabled: false,
  //   runApp: (){
  // },
  // );

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
