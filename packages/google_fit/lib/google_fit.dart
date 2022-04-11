
import 'dart:async';

import 'package:flutter/services.dart';

class GoogleFit {
  static const MethodChannel _channel = MethodChannel('google_fit');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
