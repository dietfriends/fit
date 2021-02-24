///
//  Generated code. Do not modify.
//  source: messages.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const ActivityLog$json = const {
  '1': 'ActivityLog',
  '2': const [
    const {'1': 'activityType', '3': 1, '4': 1, '5': 9, '10': 'activityType'},
    const {'1': 'activityId', '3': 2, '4': 1, '5': 9, '10': 'activityId'},
    const {
      '1': 'totalCaloriesBurned',
      '3': 3,
      '4': 1,
      '5': 1,
      '10': 'totalCaloriesBurned'
    },
    const {'1': 'duration', '3': 4, '4': 1, '5': 9, '10': 'duration'},
    const {'1': 'totalDistance', '3': 5, '4': 1, '5': 9, '10': 'totalDistance'},
    const {'1': 'source', '3': 6, '4': 1, '5': 9, '10': 'source'},
  ],
};

const ListActivityLogsResponse$json = const {
  '1': 'ListActivityLogsResponse',
  '2': const [
    const {
      '1': 'activityLogs',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.dietfriends.fitness.ActivityLog',
      '10': 'activityLogs'
    },
  ],
};

const ListActivityLogsRequest$json = const {
  '1': 'ListActivityLogsRequest',
  '2': const [
    const {'1': 'startTime', '3': 1, '4': 1, '5': 5, '10': 'startTime'},
    const {'1': 'endTime', '3': 2, '4': 1, '5': 5, '10': 'endTime'},
  ],
};
