  
import 'package:catcher_2/model/platform_type.dart';
import 'package:core/lib.dart';
import 'package:newrelic_mobile/config.dart' as NewRelic;

class NewRelicHandler extends ReportHandler {
  NewRelicHandler._({
    NewrelicMobile? newrelic,
  }) : _newrelic = newrelic ?? NewrelicMobile.instance;

  static final NewRelicHandler instance = NewRelicHandler._();
  bool _log = true;

  final NewrelicMobile _newrelic;

  set printLogs(bool log) {
    _log = log;
  }

  void recordError(
    Object error,
    StackTrace? stackTrace, {
    Map<String, dynamic>? attributes,
    bool isFatal = false,
  }) =>
      _newrelic.recordError(
        error,
        stackTrace,
        attributes: attributes,
        isFatal: isFatal,
      );

  @override
  Future<bool> handle(Report report, BuildContext? context) async {
    try {
      _printLog('⏳ Logging to NewRelic...');
      _newrelic.recordError(report.error, report.stackTrace);
      _printLog('✅ Logged to NewRelic!');
      return true;
    } catch (exception, stackTrace) {
      _printLog('❌ Failed to send NewRelic event: $exception $stackTrace');
      return false;
    }
  }

  @override
  List<PlatformType> getSupportedPlatforms() => [
        PlatformType.android,
        PlatformType.iOS,
        // PlatformType.web,
        // PlatformType.linux,
        // PlatformType.macOS,
        // PlatformType.windows,
      ];

  Future<void> start({
    required String androidToken,
    required String iosToken,
    required Function runApp,
    bool analyticsEventEnabled = true,
    bool crashReportingEnabled = true,
    bool httpResponseBodyCaptureEnabled = true,
    bool interactionTracingEnabled = true,
    bool loggingEnabled = true,
    bool networkErrorRequestEnabled = true,
    bool networkRequestEnabled = true,
    bool webViewInstrumentation = true,
    bool printStatementAsEventsEnabled = true,
    bool httpInstrumentationEnabled = true,
    bool fedRampEnabled = false,
    bool offlineStorageEnabled = true,
    bool backgroundReportingEnabled = false,
    bool distributedTracingEnabled = true,
    bool newEventSystemEnabled = false,
  }) {
    String appToken = '';
    if (PlatformChecker.isAndroidNative) {
      appToken = androidToken;
    } else if (PlatformChecker.isIosNative) {
      appToken = iosToken;
    }
    NewRelic.Config config = NewRelic.Config(
      accessToken: appToken,
      //Android Specific
      // Optional:Enable or disable collection of event data.
      analyticsEventEnabled: analyticsEventEnabled,

      // Optional:Enable or disable reporting network and HTTP request errors to the MobileRequestError event type.
      networkErrorRequestEnabled: networkErrorRequestEnabled,

      // Optional:Enable or disable reporting successful HTTP requests to the MobileRequest event type.
      networkRequestEnabled: networkRequestEnabled,

      // Optional:Enable or disable crash reporting.
      crashReportingEnabled: crashReportingEnabled,

      // Optional:Enable or disable interaction tracing. Trace instrumentation still occurs, but no traces are harvested. This will disable default and custom interactions.
      interactionTracingEnabled: interactionTracingEnabled,

      // Optional:Enable or disable capture of HTTP response bodies for HTTP error traces, and MobileRequestError events.
      httpResponseBodyCaptureEnabled: httpResponseBodyCaptureEnabled,

      // Optional: Enable or disable agent logging.
      loggingEnabled: loggingEnabled,

      //iOS Specific
      // Optional:Enable/Disable automatic instrumentation of WebViews
      webViewInstrumentation: webViewInstrumentation,

      //Optional: Enable or Disable Print Statements as Analytics Events
      printStatementAsEventsEnabled: printStatementAsEventsEnabled,

      // Optional:Enable/Disable automatic instrumentation of Http Request
      httpInstrumentationEnabled: httpInstrumentationEnabled,

      // Optional : Enable or disable reporting data using different endpoints for US government clients
      fedRampEnabled: fedRampEnabled,

      // Optional: Enable or disable offline data storage when no internet connection is available.
      offlineStorageEnabled: offlineStorageEnabled,

      // iOS Specific
      // Optional: Enable or disable background reporting functionality.
      backgroundReportingEnabled: backgroundReportingEnabled,

      // iOS Specific
      // Optional: Enable or disable to use our new, more stable, event system for iOS agent.
      newEventSystemEnabled: newEventSystemEnabled,

      // Optional: Enable or disable distributed tracing.
      distributedTracingEnabled: distributedTracingEnabled,
    );
    _printLog('>>> ⏳ Start Agent NewRelic...');
    return NewrelicMobile.instance.start(config, runApp);
  }

  void _printLog(String message) {
    if (_log) {
      debugPrint(message);
    }
  }
}
