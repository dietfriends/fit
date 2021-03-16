// You have generated a new plugin project without
// specifying the `--platforms` flag. A plugin project supports no platforms is generated.
// To add platforms, run `flutter create -t plugin --platforms <platforms> .` under the same
// directory. You can also find a detailed instruction on how to add platforms in the `pubspec.yaml` at https://flutter.dev/docs/development/packages-and-plugins/developing-packages#plugin-platforms.

import 'dart:async';
import 'dart:io';

import 'package:fit/src/generated/messages.pb.dart';
import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:google_sign_in/google_sign_in.dart';

import 'src/generated/messages.dart';
import 'src/provider.dart';
export 'src/provider.dart';

class Fit {
  static FitApi _apiInstance;

  static GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'https://www.googleapis.com/auth/fitness.activity.read',
    ],
  );

  static FitApi get _api {
    if (_apiInstance == null) {
      _apiInstance = FitApi();
    }
    return _apiInstance;
  }

  static Future<void> init() {
    return _api.initialize();
  }

  static Future<List<ActivityLog>> listActivityLogs(
      Provider provider, int startTime, int endTime) async {
    final request = ListActivityLogsRequest()
      ..startTime = $fixnum.Int64(startTime)
      ..endTime = $fixnum.Int64(endTime);
    final wrapper = await _api
        .listActivityLogs(ProtoWrapper()..proto = request.writeToBuffer());
    return ListActivityLogsResponse.fromBuffer(wrapper.proto).activityLogs;
  }

  static Future<void> dispose() {
    return _api.dispose();
  }

  static checkPermission() async {
    if (Platform.isAndroid) {
      if (_googleSignIn.currentUser == null) {
        await _googleSignIn.signIn();
      }
    }
    return _api.checkPermission();
  }
}
