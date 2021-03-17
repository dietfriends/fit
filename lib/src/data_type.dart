enum DataType {
  STEPS,
  WEIGHT,
  HEIGHT,
  BLOOD_GLUCOSE,
  DISTANCE_WALKING_RUNNING,
  ACTIVITY_SEGMENT,

  /// Aggregate
  /// #Activity
  /// Use these data types to read aggregated health and wellness data.
  ///
  /// Total time and number of segments for a particular activity over a time period. Each data point represents a summary of all activity segments for a particular activity type over a time interval.
  ACTIVITY_SUMMARY,

  /// Each data point represents the user's average, maximum and minimum basal metabolic rate over the time range, in kilocalories per day. This is useful if the user has gained or lost weight and therefore their BMR has changed.
  BASAL_METABOLIC_RATE,

  /// The aggregate or total calories burned, in kilocalories, over a time period.
  CALORIES_BURNED_SUMMARY,
  HEART_POINTS
}
