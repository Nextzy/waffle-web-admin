package com.change_application_name

import android.util.Log
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity() {

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        Log.i(TAG, "configureFlutterEngine")
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL)
            .setMethodCallHandler { call, result ->
                Log.i(TAG, "MethodChannel")
                if (call.method == "method1") {
                    result.success(null)
                } else {
                    result.notImplemented()
                }
            }
    }

    companion object {
        private const val CHANNEL = "com.change_application_name/channel"
        private const val TAG = "MainActivity"
    }

}
