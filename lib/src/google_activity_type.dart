enum GoogleActivityType {
  inVehicle,
  biking,
  _2,

  /// 3
  still,

  /// 4
  unknown,

  /// 5
  tilting,
  _6,

  /// 7
  walking,
  running,
  aerobics,
  badminton,
  baseball,
  basketball,
  biathlon,
  bikingHand,
  bikingMountain,
  bikingRoad,
  spinning,
  bikingStationary,
  bikingUtility,
  boxing,
  calisthenics,
  circuitTraining,
  cricket,
  dancing,
  elliptical,
  fencing,
  footbalAmerican,
  footballAustralian,
  footballSoccer,

  /// 30
  frisbee,

  /// 31
  gardening,

  /// 32
  golf,

  /// 33
  gymnastics,

  /// 34
  handball,

  /// 35
  hiking,

  /// 36
  hockey,

  /// 37
  horsebackRiding,

  /// 38
  housework,

  /// 39
  jumpingRope,

  /// 40
  kayaking,
  kettlebellTraining,
  kickboxing,
  kitesurfing,
  matialArts,
  meditation,
  mixedMartialArts,
  p90x,
  paragliding,
  pilates,
  polo,
  racquetball,
  rockClimbing,
  rowing,
  rowingMaching,
  rugby,
  jogging,
  runningOnSand,
  runningTreadmill,
  sailing,
  scubaDiving,
  skateboarding,
  skating,
  skatingCross,
  skatingInline,
  skiing,
  skiingBackCountry,
  skiingCrossCountry,
  skiingDownhill,
  skiingKite,

  /// 70
  skiingRoller,

  /// 71
  sledding,
  _72,

  /// 73
  snowboarding,
  snowmobile,
  snowshoeing,
  squash,
  stairClimbing,
  stairClimbingMachine,
  standupPaddleboarding,
  strengthTraining,
  surfing,
  swimming,
  swimmingPool,
  swimmingOpenWater,
  tableTennins,
  teamSports,
  tennis,
  @Deprecated('use [walkingTreadmill] or [runningTreadmill]')
  treadmill,
  volleyBall,
  volleyBallBeach,
  volleyBallIndoor,
  wakeboarding,
  walkingFitness,
  walkingNordic,
  walkingTreadmill,
  waterpolo,
  weightlifting,
  whennchair,
  windsurfing,
  yoga,
  zumba,
  diving,
  ergometer,
  iceSkating,
  skatingIndoor,
  curling,
  _107,

  /// 108
  other,
  _109,
  _110,
  _111,
  _112,

  /// 113
  crossfit,
  highIntensityIntervalTraining,
  intervalTraining,
  walkingStroller,
  elevator,
  escalator,

  /// 119
  archery,

  /// 120
  softball,
  _121,

  /// 122
  guidedBreathing,
}

extension MoreGoogleActivityTypes on GoogleActivityType {
  int get code => index;
  String get name {
    switch(this) {

    }
  }
}
