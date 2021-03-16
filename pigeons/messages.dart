// @dart = 2.9

import 'dart:typed_data';

import 'package:pigeon/pigeon_lib.dart';

class ProtoWrapper {
  Uint8List proto;
}

class BoolValue {
  bool value;
}

@HostApi(dartHostTestHandler: 'TestHostFitApi')
abstract class FitApi {
  void initialize();

  void dispose();

  @async
  BoolValue checkPermission();

  ProtoWrapper getActivityType(ProtoWrapper request);

  @async
  ProtoWrapper listActivityLogs(ProtoWrapper request);
}

void configurePigeon(PigeonOptions opts) {
  opts.dartOut = 'lib/src/generated/messages.dart';
  opts.dartTestOut = 'lib/src/generated/test.dart';
  opts.objcHeaderOut = 'ios/Classes/messages.h';
  opts.objcSourceOut = 'ios/Classes/messages.m';
  opts.objcOptions.prefix = 'FLT';
  opts.javaOut =
      'android/src/main/java/kr/dietfriends/plugins/fit/Messages.java';
  opts.javaOptions.package = 'kr.dietfriends.plugins.fit';
}
