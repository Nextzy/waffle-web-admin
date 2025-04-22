import 'package:envied/envied.dart';

import 'app_env.dart';
import 'app_env_fields.dart';

part 'generated/env_dev.g.dart';

@Envied(name: 'Env', path: '.env/.env.dev')
final class DevEnvironment implements AppEnv, AppEnvField {
  DevEnvironment();

  @override
  @EnviedField(varName: 'NAME', obfuscate: true)
  final String name = _Env.name;

  @override
  @EnviedField(varName: 'API_KEY', obfuscate: true)
  final String apiKey = _Env.apiKey;

  @override
  @EnviedField(varName: 'API_BASE_URL', obfuscate: true)
  final String apiBaseUrl = _Env.apiBaseUrl;

  @override
  @EnviedField(varName: 'NEWRELIC_ANDROID_TOKEN', obfuscate: true)
  final String newrelicAndroidToken = _Env.newrelicAndroidToken;

  @override
  @EnviedField(varName: 'NEWRELIC_IOS_TOKEN', obfuscate: true)
  final String newrelicIosToken = _Env.newrelicIosToken;
}
