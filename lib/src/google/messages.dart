import 'package:fit/src/generated/messages.pb.dart';
import 'package:googleapis/fitness/v1.dart' as $fitness;

extension ListSessionsResponseX on ListSessionsResponse {
  static ListSessionsResponse fromFitness(
      $fitness.ListSessionsResponse response) {
    return ListSessionsResponse()
      ..session.addAll(response.session.map((e) => SessionX.fromFitness(e)));
  }
}

extension SessionX on Session {
  static Session fromFitness($fitness.Session session) {
    final proto = Session();
    if (session.endTimeMillis != null) {
      proto.endTimeMillis = session.endTimeMillis;
    }
    if (session.startTimeMillis != null) {
      proto.startTimeMillis = session.startTimeMillis;
    }
    if (session.activityType != null) {
      proto.activityType = session.activityType;
    }
    if (session.id != null) {
      proto.id = session.id;
    }
    if (session.name != null) {
      proto.name = session.name;
    }
    if (session.description != null) {
      proto.description = session.description;
    }
    if (session.activeTimeMillis != null) {
      proto.activeTimeMillis = session.activeTimeMillis;
    }
    return proto;
  }
}
