
import 'dart:async';

import 'package:flutter/services.dart';

class AppleHealth {
  static const MethodChannel _channel = MethodChannel('apple_health');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
