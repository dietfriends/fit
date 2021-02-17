/// https://img-developer.samsung.com/onlinedocs/health/android/data/EXERCISE_TYPE.html
/// https://developer.apple.com/documentation/healthkit/hkworkoutactivitytype
/// https://developers.google.com/fit/rest/v1/reference/activity-types
/// https://developers.google.com/android/reference/com/google/android/gms/fitness/FitnessActivities#VOLLEYBALL_BEACH
class ActivityType {
  final String name;

  // id
  final int id;

  // Source of Activity Type; google, apple, samsung
  final String source;

  const ActivityType(this.source, this.name, this.id);

  const ActivityType.google(this.name, this.id) : source = 'google';

  static ActivityType fromGoogle(int activityId) {
    switch (activityId) {
      case 0:
        return ActivityType.google('In vehicle', 0);
    }
  }

  static const _fitness = {
    9: 'Aerobics',
    119: 'Archery',
    10: 'Badminton',
    11: 'Baseball',
    12: 'Basketball',
    13: 'Biathlon',
    1: 'Biking',
    14: 'Handbiking',
    15: 'Mountain biking',
    16: 'Road biking',
    17: 'Spinning',
    18: 'Stationary biking',
    19: 'Utility biking',
    20: 'Boxing',
    21: 'Calisthenics',
    22: 'Circuit training',
    23: 'Cricket',
    113: 'Crossfit',
    106: 'Curling',
    24: 'Dancing',
    102: 'Diving',
    117: 'Elevator',
    25: 'Elliptical',
    103: 'Ergometer',
    118: 'Escalator',
    26: 'Fencing',
    27: 'Football (American)',
    28: 'Football (Australian)',
    29: 'Football (Soccer)',
    30: 'Frisbee',
    31: 'Gardening',
    32: 'Golf',
    122: 'Guided Breathing',
    33: 'Gymnastics',
    34: 'Handball	',
    114: 'HIIT',
    35: 'Hiking',
  };
}

// Google
// Aerobics	9
// Archery	119
// Badminton	10
// Baseball	11
// Basketball	12
// Biathlon	13
// Biking	1
// Handbiking	14
// Mountain biking	15
// Road biking	16
// Spinning	17
// Stationary biking	18
// Utility biking	19
// Boxing	20
// Calisthenics	21
// Circuit training	22
// Cricket	23
// Crossfit	113
// Curling	106
// Dancing	24
// Diving	102
// Elevator	117
// Elliptical	25
// Ergometer	103
// Escalator	118
// Fencing	26
// Football (American)	27
// Football (Australian)	28
// Football (Soccer)	29
// Frisbee	30
// Gardening	31
// Golf	32
// Guided Breathing	122
// Gymnastics	33
// Handball	34
// HIIT	114
// Hiking	35
// Hockey	36
// Horseback riding	37
// Housework	38
// Ice skating	104
// In vehicle	0
// Interval Training	115
// Jumping rope	39
// Kayaking	40
// Kettlebell training	41
// Kickboxing	42
// Kitesurfing	43
// Martial arts	44
// Meditation	45
// Mixed martial arts	46
// Other (unclassified fitness activity)	108
// P90X exercises	47
// Paragliding	48
// Pilates	49
// Polo	50
// Racquetball	51
// Rock climbing	52
// Rowing	53
// Rowing machine	54
// Rugby	55
// Running	8
// Jogging	56
// Running on sand	57
// Running (treadmill)	58
// Sailing	59
// Scuba diving	60
// Skateboarding	61
// Skating	62
// Cross skating	63
// Indoor skating	105
// Inline skating (rollerblading)	64
// Skiing	65
// Back-country skiing	66
// Cross-country skiing	67
// Downhill skiing	68
// Kite skiing	69
// Roller skiing	70
// Sledding	71
// Snowboarding	73
// Snowmobile	74
// Snowshoeing	75
// Softball	120
// Squash	76
// Stair climbing	77
// Stair-climbing machine	78
// Stand-up paddleboarding	79
// Still (not moving)	3
// Strength training	80
// Surfing	81
// Swimming	82
// Swimming (open water)	84
// Swimming (swimming pool)	83
// Table tennis (ping pong)	85
// Team sports	86
// Tennis	87
// Tilting (sudden device gravity change)	5
// Treadmill (walking or running)	88
// Unknown (unable to detect activity)	4
// Volleyball	89
// Volleyball (beach)	90
// Volleyball (indoor)	91
// Wakeboarding	92
// Walking	7
// Walking (fitness)	93
// Nording walking	94
// Walking (treadmill)	95
// Walking (stroller)	116
// Waterpolo	96
// Weightlifting	97
// Wheelchair	98
// Windsurfing	99
// Yoga	100
// Zumba	101
