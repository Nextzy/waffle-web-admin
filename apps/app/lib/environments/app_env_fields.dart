
/// Both DebugEnv and ReleaseEnv must implement all these values
abstract interface class AppEnvField {
  abstract final String name;
  abstract final String apiBaseUrl;
  abstract final String apiKey;
  abstract final String newrelicAndroidToken;
  abstract final String newrelicIosToken;
}
