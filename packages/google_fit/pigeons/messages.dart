import 'package:pigeon/pigeon.dart';

class DataType {
  String name;

  // Fields
  String readScope;
  String writeScope;
  DataType? aggregateType;

  DataType(this.name,
      this.readScope,
      this.writeScope, this.aggregateType,);
}

enum DataSourceType {
  TYPE_DERIVED,
  TYPE_RAW,
}

class DataSource {
  String? appPackageName;
  DataType? dateType;

  // Device device;
  String? streamIdentifier;
  String? streamName;
  DataSourceType? type;

  DataSource(this.appPackageName,
      this.dateType,
      // this.device,
      this.streamIdentifier,
      this.streamName,
      this.type,);
}

class DataPoint {
  DataSource? dataSource;

  DataPoint(this.dataSource,);
}

class DataSet {
  DataType? dataType;
  List<DataPoint?> dataPoints;

  DataSet({required this.dataType, this.dataPoints = const []});
}

@ConfigurePigeon(PigeonOptions(
    dartOut: 'lib/src/generated/messages.dart',
    javaOut:
    'android/src/main/java/com/balancefroends/plugins/google/fit/Messages.java',
    javaOptions: JavaOptions(
      package: 'com.balancefroends.plugins.google.fit',
    )))
@HostApi()
abstract class HistoryClient {
  /// Reads the current daily total for the given dataType. The daily total will
  /// be computed from midnight of the current day on the device's current
  /// timezone. The method can be used as follows:
  /// https://developers.google.com/android/reference/com/google/android/gms/fitness/HistoryClient#public-taskdataset-readdailytotal-datatype-datatype
  @async
  DataSet readDailyTotal(DataType dataType);

  /// Reads the current daily total for the given dataType from the local device
  /// only. The daily total will be computed from midnight of the current day on
  /// the device's current timezone.
  /// https://developers.google.com/android/reference/com/google/android/gms/fitness/HistoryClient#public-taskdataset-readdailytotalfromlocaldevice-datatype-datatype
  @async
  DataSet readDailyTotalFromLocalDevice(DataType dataType);
}
