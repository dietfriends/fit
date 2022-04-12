import 'package:pigeon/pigeon.dart';

class ProtoWrapper {
  int? proto;
}

class BoolValue {
  bool? value;
}

@HostApi(dartHostTestHandler: 'TestHostGoogleFitApi')
abstract class GoogleFitApi {
  void initialize();

  void dispose();

  @async
  bool checkPermission();

//ProtoWrapper getActivityType(ProtoWrapper request);

//@async
//ProtoWrapper aggregate(ProtoWrapper request);

//@async
//ProtoWrapper sessionsList(ProtoWrapper request);

//@async
//ProtoWrapper readDailyTotal(ProtoWrapper request);
}

class HKQuantity {
  String? unit;
  int? amount;
}

/// The HKWorkout class is a concrete subclass of the HKSample class;
/// however, they behave somewhat differently than other sample types.
class HKWorkout {
  /// The workout’s duration.
  int? duration;

  /// The total distance traveled during the workout.
  ///HKQuantity totalDistance;
  /// The total distance traveled during the workout.
  int? totalDistance;

  ///HKQuantity totalEnergyBurned;
  int? totalEnergyBurned;
}

@HostApi(dartHostTestHandler: 'TestHostHealthKitApi')
abstract class HealthKitApi {
  @async
  void requestAuthorization();
}
