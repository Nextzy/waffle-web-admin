import 'app_env_fields.dart';

const String? appEnvironment = String.fromEnvironment('ENVIRONMENT') != ''
    ? String.fromEnvironment('ENVIRONMENT')
    : null;

abstract interface class AppEnv implements AppEnvField {
  static late final AppEnv _environment;

  static final AppEnv instance = _environment;

  static void initial(AppEnv env) {
    _environment = env;
  }

  static bool get isDev => appEnvironment?.toLowerCase() == 'dev';

  static bool get isUat => appEnvironment?.toLowerCase() == 'uat';

  static bool get isProd => appEnvironment?.toLowerCase() == 'prod';
}
