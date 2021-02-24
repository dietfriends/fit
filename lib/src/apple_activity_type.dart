import 'package:recase/recase.dart';

enum AppleActivityType {
  _zero,
  archery,
  australianFootball,
  badminton,
  baseball,
  basketball,
  bowling,
  boxing, // See also HKWorkoutActivityTypeKickboxing.

  climbing,
  cricket,
  crossTraining, // Any mix of cardio and/or strength training. See also HKWorkoutActivityTypeCoreTraining and HKWorkoutActivityTypeFlexibility.

  curling,
  cycling,

  @Deprecated("Use [socialDance] or [cardioDance]")
  dance, // This enum remains available to access older data.

  @Deprecated("Use [socialDance], [cardioDance], [barre] or [pilates]")
  danceInspiredTraining, // This enum remains available to access older data.

  elliptical,

  equestrianSports, // Polo, Horse Racing, Horse Riding, etc.

  fencing,

  fishing,

  functionalStrengthTraining, // Primarily free weights and/or body weight and/or accessories

  golf,

  gymnastics,

  handball,

  hiking,

  hockey, // Ice Hockey, Field Hockey, etc.

  hunting,

  lacrosse,

  martialArts,

  mindAndBody, // Qigong, meditation, etc.

  /// Use [mixedCardio] or [highIntensityIntervalTraining]
  @Deprecated("Use [mixedCardio] or [highIntensityIntervalTraining]")
  mixedMetabolicCardioTraining, // This enum remains available to access older data.

  paddleSports, // Canoeing, Kayaking, Outrigger, Stand Up Paddle Board, etc.

  play, // Dodge Ball, Hopscotch, Tetherball, Jungle Gym, etc.

  preparationAndRecovery, // Therapeutic activities like foam rolling, self massage and flexibility moves.

  racquetball,

  rowing,

  rugby,

  running,

  sailing,

  skatingSports, // Ice Skating, Speed Skating, Inline Skating, Skateboarding, etc.

  snowSports, // Sledding, Snowmobiling, Building a Snowman, etc. See also HKWorkoutActivityTypeCrossCountrySkiing, HKWorkoutActivityTypeSnowboarding, and HKWorkoutActivityTypeDownhillSkiing.

  soccer,

  softball,

  squash,

  stairClimbing, // See also HKWorkoutActivityTypeStairs and HKWorkoutActivityTypeStepTraining.

  surfingSports, // Traditional Surfing, Kite Surfing, Wind Surfing, etc.

  swimming,

  tableTennis,

  tennis,

  trackAndField, // Shot Put, Javelin, Pole Vaulting, etc.

  traditionalStrengthTraining, // Primarily machines and/or free weights

  volleyball,

  walking,

  waterFitness,

  waterPolo,

  waterSports, // Water Skiing, Wake Boarding, etc.

  wrestling,

  yoga,

  /// @available(iOS 10.0, *)
  barre, // HKWorkoutActivityTypeDanceInspiredTraining

  /// @available(iOS 10.0, *)
  coreTraining,

  /// @available(iOS 10.0, *)
  crossCountrySkiing,

  /// @available(iOS 10.0, *)
  downhillSkiing,

  /// @available(iOS 10.0, *)
  flexibility,

  /// @available(iOS 10.0, *)
  highIntensityIntervalTraining,

  /// @available(iOS 10.0, *)
  jumpRope,

  /// @available(iOS 10.0, *)
  kickboxing,

  /// @available(iOS 10.0, *)
  pilates, // HKWorkoutActivityTypeDanceInspiredTraining

  /// @available(iOS 10.0, *)
  snowboarding,

  /// @available(iOS 10.0, *)
  stairs,

  /// @available(iOS 10.0, *)
  stepTraining,

  /// @available(iOS 10.0, *)
  wheelchairWalkPace,

  /// @available(iOS 10.0, *)
  wheelchairRunPace,

  /// @available(iOS 11.0, *)
  taiChi,

  /// @available(iOS 11.0, *)
  mixedCardio, // HKWorkoutActivityTypeMixedMetabolicCardioTraining

  /// @available(iOS 11.0, *)
  handCycling,

  /// @available(iOS 13.0, *)
  discSports,

  /// @available(iOS 13.0, *)
  fitnessGaming,

  /// @available(iOS 14.0, *)
  cardioDance,

  /// @available(iOS 14.0, *)
  socialDance, // Dances done in social settings like swing, salsa and folk dances from different world regions.

  /// @available(iOS 14.0, *)
  pickleball,

  /// @available(iOS 14.0, *)
  cooldown, // Low intensity stretching and mobility exercises following a more vigorous workout type

  /// 3000
  other,
}

extension MoreAppleActivityTypes on AppleActivityType {
  int get code {
    return (this.index <= 80) ? this.index : 3000;
  }

  static AppleActivityType fromCode(int code) {
    if (code <= 80) {
      return AppleActivityType.values[code];
    }
    // other
    return AppleActivityType.other;
  }

  String get name {
    return toString().replaceAll('AppleActivityType.', '');
  }
}
