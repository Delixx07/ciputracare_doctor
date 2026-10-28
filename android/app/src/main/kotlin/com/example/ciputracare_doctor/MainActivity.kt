package com.example.ciputracare_doctor

import android.view.WindowManager
import io.flutter.embedding.android.FlutterFragmentActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

// FlutterFragmentActivity dibutuhkan local_auth (biometrik).
class MainActivity : FlutterFragmentActivity() {
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        // FLAG_SECURE: blokir screenshot/rekam layar & kosongkan pratinjau recent apps saat data pasien tampil.
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, "ciputracare/layar_aman").setMethodCallHandler { call, result ->
            when (call.method) {
                "aktifkan" -> {
                    window.addFlags(WindowManager.LayoutParams.FLAG_SECURE)
                    result.success(null)
                }
                "matikan" -> {
                    window.clearFlags(WindowManager.LayoutParams.FLAG_SECURE)
                    result.success(null)
                }
                else -> result.notImplemented()
            }
        }
    }
}
