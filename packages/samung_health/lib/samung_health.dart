
import 'dart:async';

import 'package:flutter/services.dart';

class SamungHealth {
  static const MethodChannel _channel = MethodChannel('samung_health');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
