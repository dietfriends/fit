// You have generated a new plugin project without
// specifying the `--platforms` flag. A plugin project supports no platforms is generated.
// To add platforms, run `flutter create -t plugin --platforms <platforms> .` under the same
// directory. You can also find a detailed instruction on how to add platforms in the `pubspec.yaml` at https://flutter.dev/docs/development/packages-and-plugins/developing-packages#plugin-platforms.

import 'dart:async';

import 'package:fit/activity_type.dart';
import 'package:fit/src/generated/messages.pb.dart';
import 'package:flutter/services.dart';

import 'messages.dart';

class Fit {
  static FitApi _apiInstance;

  static FitApi get _api {
    if (_apiInstance == null) {
      _apiInstance = FitApi();
    }
    return _apiInstance;
  }

  static Future<List<ActivityLog>> listActivityLogs(
      int startTime, int endTime) async {
    final request = ListActivityLogsRequest()
      ..startTime = startTime
      ..endTime = endTime;
    final wrapper = await _api
        .listActivityLogs(ProtoWrapper()..proto = request.writeToBuffer());
    return ListActivityLogsResponse.fromBuffer(wrapper.proto).activityLogs;
  }
}
