// ignore_for_file: prefer_const_declarations

import 'package:change_application_name/application.dart';
import 'package:change_application_name/environments/env_dev.dart';
import 'package:change_application_name/firebase_options_dev.dart';
import 'package:talker_bloc_logger/talker_bloc_logger.dart';

void main() async {
  await setupMainDev();
  await setupFirebaseDev();
  runApplication();
}

Future<void> setupMainDev() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    setPathUrlStrategy();
    SemanticsBinding.instance.ensureSemantics();
  }

  Bloc.observer = TalkerBlocObserver(
    settings: TalkerBlocLoggerSettings(
      enabled: true,
      printEventFullData: true,
      printStateFullData: true,
      printChanges: true,
      printClosings: true,
      printCreations: true,
      printEvents: true,
      printTransitions: true,
    ),
  );
  AppEnv.initial(DevEnvironment());
  await AppLocalization.init();
  AppLocalDatabase.initDatabase();
  // AppHttpClient.instance.setupProxyAdapter(
  //     '<YOUR_IP>', '9090'); // Port: 9090 is default port for Proxyman

}

Future<void> setupFirebaseDev() async {
  await Firebase.initializeApp(
    options: DevFirebaseOptions.currentPlatform,
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
  //   runApp: () {
  // },
  // );

  Catcher2(
    ensureInitialized: true,
    enableLogger: true,
    debugConfig: Catcher2Options(
      PageReportMode(),
      [
        // CrashlyticsHandler(),
        // NewRelicHandler.instance,
        ConsoleHandler(
          enableApplicationParameters: true,
          enableDeviceParameters: true,
          enableStackTrace: true,
          handleWhenRejected: false,
        )
      ],
      logger: DefaultCatcherLogger(),
    ),
    runAppFunction: () async {
      runApp(
        MyApplication(),
      );
    },
  );
}
