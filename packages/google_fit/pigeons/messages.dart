import 'package:pigeon/pigeon.dart';

class AggregateResponse {
  final List<Bucket?> buckets;

  AggregateResponse(this.buckets);
}

class Bucket {
  final int startTime;
  final int endTime;
  final Session? session;
  final List<DataSet?> dataSets;

  Bucket(this.startTime, this.endTime, this.session, this.dataSets);
}

class Session {
  final String activity;
  final int activityType;
  final String indentifier;
  final String description;
  final String? name;

  Session(this.activity, this.activityType, this.indentifier, this.description,
      this.name);
}

enum DataType { duration, calorie, speed, distance, step, activity, unknwon }

enum DataSourceType {
  typeDerieved,
  typeRaw,
}

class DataSource {
  String? appPackageName;

  // Device device;
  String streamIdentifier;
  String streamName;

  DataSource(
    this.appPackageName,
    this.streamIdentifier,
    this.streamName,
  );
}

class DataSet {
  final DataType? dataType;
  final bool isEmpty;
  final List<DataPoint?> dataPoints;
  final DataSource? dataSource;

  DataSet(this.dataType, this.isEmpty, this.dataPoints, this.dataSource);
}

class DataPoint {
  final String valueType;
  final String value;

  DataPoint(this.valueType, this.value);
}

@ConfigurePigeon(PigeonOptions(
    dartOut: 'lib/src/generated/messages.dart',
    javaOut:
        'android/src/main/java/com/balancefroends/plugins/google/fit/Messages.java',
    javaOptions: JavaOptions(
      package: 'com.balancefroends.plugins.google.fit',
    )))
@HostApi()
abstract class GoogleFitClient {
  @async
  bool hasPermissions();

  @async
  bool requestAuthorization();

  @async
  AggregateResponse aggregate(int startTimeMillis, int endTimeMillis);
}
