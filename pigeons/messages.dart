import 'package:pigeon/pigeon_lib.dart';

class ActivityLog {
  /// The type of activity performed
  /// 운동 타입
  String activityType;
  String activityId;

  /// 운동 소모 칼로리
  double totalCaloriesBurned;

  /// 운동 시간
  String duration;
  // The total distance traveled
  /// 이동 거리
  String totalDistance;

  // String totalClimed;

  /// Google, Apple, Samsung
  String source;
}

class ListActivityLogsResponse {
  List<ActivityLog> activityLogs;
}

class ListActivityLogsReuqest {
  String startDate;
}

@HostApi(dartHostTestHandler: 'TestHostFitnessApi')
abstract class FitnessApi {
  void initialize();

  void dispose();

  ListActivityLogsResponse listActivityLogs(ListActivityLogsReuqest request);
}

void configurePigeon(PigeonOptions opts) {
  opts.dartOut = 'lib/messages.dart';
  opts.objcHeaderOut = 'ios/Classes/messages.h';
  opts.objcSourceOut = 'ios/Classes/messages.m';
  opts.objcOptions.prefix = 'FLT';
  opts.javaOut =
      'android/src/main/java/kr/dietfriends/plugins/fitness/Messages.java';
  opts.javaOptions.package = 'kr.dietfriends.plugins.fitness';
}
