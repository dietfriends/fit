package com.balancefriends.plugins.google.fit.google_fit

import androidx.annotation.NonNull
import com.balancefroends.plugins.google.fit.Messages
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodChannel

/** GoogleFitPlugin */
class GoogleFitPlugin : FlutterPlugin {
  /// The MethodChannel that will the communication between Flutter and native Android
  ///
  /// This local reference serves to register the plugin with the Flutter Engine and unregister it
  /// when the Flutter Engine is detached from the Activity
  private lateinit var channel: MethodChannel

  override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    Messages.HistoryClient.setup(flutterPluginBinding.binaryMessenger, AndroidHistoryClient(flutterPluginBinding.applicationContext))
  }

  override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
    Messages.HistoryClient.setup(binding.binaryMessenger, null)
  }
}
