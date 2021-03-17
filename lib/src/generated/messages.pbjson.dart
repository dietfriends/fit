///
//  Generated code. Do not modify.
//  source: messages.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const Session$json = const {
  '1': 'Session',
  '2': const [
    const {
      '1': 'activeTimeMillis',
      '3': 1,
      '4': 1,
      '5': 9,
      '10': 'activeTimeMillis'
    },
    const {'1': 'activityType', '3': 2, '4': 1, '5': 5, '10': 'activityType'},
    const {'1': 'description', '3': 4, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'endTimeMillis', '3': 5, '4': 1, '5': 9, '10': 'endTimeMillis'},
    const {'1': 'id', '3': 6, '4': 1, '5': 9, '10': 'id'},
    const {
      '1': 'modifiedTimeMillis',
      '3': 7,
      '4': 1,
      '5': 9,
      '10': 'modifiedTimeMillis'
    },
    const {'1': 'name', '3': 8, '4': 1, '5': 9, '10': 'name'},
    const {
      '1': 'startTimeMillis',
      '3': 9,
      '4': 1,
      '5': 9,
      '10': 'startTimeMillis'
    },
  ],
};

const ListSessionsResponse$json = const {
  '1': 'ListSessionsResponse',
  '2': const [
    const {
      '1': 'deletedSession',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.dietfriends.fitness.Session',
      '10': 'deletedSession'
    },
    const {'1': 'hasMoreData', '3': 2, '4': 1, '5': 8, '10': 'hasMoreData'},
    const {'1': 'nextPageToken', '3': 3, '4': 1, '5': 9, '10': 'nextPageToken'},
    const {
      '1': 'session',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.dietfriends.fitness.Session',
      '10': 'session'
    },
  ],
};

const ListSessionsRequest$json = const {
  '1': 'ListSessionsRequest',
  '2': const [
    const {'1': 'activityType', '3': 1, '4': 3, '5': 5, '10': 'activityType'},
    const {'1': 'endTime', '3': 2, '4': 1, '5': 3, '10': 'endTime'},
    const {
      '1': 'includeDeleted',
      '3': 3,
      '4': 1,
      '5': 8,
      '10': 'includeDeleted'
    },
    const {'1': 'pageToken', '3': 4, '4': 1, '5': 9, '10': 'pageToken'},
    const {'1': 'startTime', '3': 5, '4': 1, '5': 3, '10': 'startTime'},
    const {'1': 'fields', '3': 6, '4': 1, '5': 9, '10': 'fields'},
  ],
};

const AggregateResponse$json = const {
  '1': 'AggregateResponse',
  '2': const [
    const {
      '1': 'bucket',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.dietfriends.fitness.AggregateBucket',
      '10': 'bucket'
    },
  ],
};

const AggregateBucket$json = const {
  '1': 'AggregateBucket',
  '2': const [
    const {'1': 'activity', '3': 1, '4': 1, '5': 5, '10': 'activity'},
    const {
      '1': 'dataset',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.dietfriends.fitness.Dataset',
      '10': 'dataset'
    },
    const {'1': 'endTimeMillis', '3': 3, '4': 1, '5': 3, '10': 'endTimeMillis'},
    const {
      '1': 'session',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.dietfriends.fitness.Session',
      '10': 'session'
    },
    const {
      '1': 'startTimeMillis',
      '3': 5,
      '4': 1,
      '5': 3,
      '10': 'startTimeMillis'
    },
    const {'1': 'type', '3': 6, '4': 1, '5': 9, '10': 'type'},
  ],
};

const Dataset$json = const {
  '1': 'Dataset',
  '2': const [
    const {'1': 'dataSourceId', '3': 1, '4': 1, '5': 9, '10': 'dataSourceId'},
    const {'1': 'maxEndTimeNs', '3': 2, '4': 1, '5': 9, '10': 'maxEndTimeNs'},
    const {
      '1': 'minStartTimeNs',
      '3': 3,
      '4': 1,
      '5': 9,
      '10': 'minStartTimeNs'
    },
    const {'1': 'nextPageToken', '3': 4, '4': 1, '5': 9, '10': 'nextPageToken'},
    const {
      '1': 'point',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.dietfriends.fitness.DataPoint',
      '10': 'point'
    },
  ],
};

const DataPoint$json = const {
  '1': 'DataPoint',
  '2': const [
    const {
      '1': 'computationTimeMillis',
      '3': 1,
      '4': 1,
      '5': 9,
      '10': 'computationTimeMillis'
    },
    const {'1': 'dataTypeName', '3': 2, '4': 1, '5': 9, '10': 'dataTypeName'},
    const {'1': 'endTimeNanos', '3': 3, '4': 1, '5': 9, '10': 'endTimeNanos'},
    const {
      '1': 'modifiedTimeMillis',
      '3': 4,
      '4': 1,
      '5': 9,
      '10': 'modifiedTimeMillis'
    },
    const {
      '1': 'originDataSourceId',
      '3': 5,
      '4': 1,
      '5': 9,
      '10': 'originDataSourceId'
    },
    const {
      '1': 'rawTimestampNanos',
      '3': 6,
      '4': 1,
      '5': 9,
      '10': 'rawTimestampNanos'
    },
    const {
      '1': 'startTimeNanos',
      '3': 7,
      '4': 1,
      '5': 9,
      '10': 'startTimeNanos'
    },
    const {
      '1': 'value',
      '3': 8,
      '4': 3,
      '5': 11,
      '6': '.dietfriends.fitness.DataPoint',
      '10': 'value'
    },
  ],
};

const DataPointValue$json = const {
  '1': 'DataPointValue',
  '2': const [
    const {'1': 'fpVal', '3': 1, '4': 1, '5': 1, '9': 0, '10': 'fpVal'},
    const {'1': 'intVal', '3': 2, '4': 1, '5': 3, '9': 0, '10': 'intVal'},
    const {
      '1': 'mapVal',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '9': 0,
      '10': 'mapVal'
    },
    const {'1': 'stringVal', '3': 4, '4': 1, '5': 9, '9': 0, '10': 'stringVal'},
  ],
  '8': const [
    const {'1': 'kind'},
  ],
};

const AggregateRequest$json = const {
  '1': 'AggregateRequest',
  '2': const [
    const {
      '1': 'aggregateBy',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.dietfriends.fitness.AggregateBy',
      '10': 'aggregateBy'
    },
    const {
      '1': 'bucketByActivitySegment',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.dietfriends.fitness.BucketByActivity',
      '10': 'bucketByActivitySegment'
    },
    const {
      '1': 'bucketByActivityType',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.dietfriends.fitness.BucketByActivity',
      '10': 'bucketByActivityType'
    },
    const {
      '1': 'bucketBySession',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.dietfriends.fitness.BucketBySession',
      '10': 'bucketBySession'
    },
    const {
      '1': 'bucketByTime',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.dietfriends.fitness.BucketByTime',
      '10': 'bucketByTime'
    },
    const {'1': 'endTimeMillis', '3': 6, '4': 1, '5': 3, '10': 'endTimeMillis'},
    const {
      '1': 'filteredDataQualityStandard',
      '3': 7,
      '4': 3,
      '5': 9,
      '10': 'filteredDataQualityStandard'
    },
    const {
      '1': 'startTimeMillis',
      '3': 8,
      '4': 1,
      '5': 3,
      '10': 'startTimeMillis'
    },
  ],
};

const AggregateBy$json = const {
  '1': 'AggregateBy',
  '2': const [
    const {'1': 'dataSourceId', '3': 1, '4': 1, '5': 9, '10': 'dataSourceId'},
    const {'1': 'dataTypeName', '3': 2, '4': 1, '5': 9, '10': 'dataTypeName'},
  ],
};

const BucketByActivity$json = const {
  '1': 'BucketByActivity',
  '2': const [
    const {
      '1': 'activityDataSourceId',
      '3': 1,
      '4': 1,
      '5': 9,
      '10': 'activityDataSourceId'
    },
    const {
      '1': 'minDurationMillis',
      '3': 2,
      '4': 1,
      '5': 3,
      '10': 'minDurationMillis'
    },
  ],
};

const BucketBySession$json = const {
  '1': 'BucketBySession',
  '2': const [
    const {
      '1': 'minDurationMillis',
      '3': 1,
      '4': 1,
      '5': 3,
      '10': 'minDurationMillis'
    },
  ],
};

const BucketByTime$json = const {
  '1': 'BucketByTime',
  '2': const [
    const {
      '1': 'durationMillis',
      '3': 1,
      '4': 1,
      '5': 3,
      '10': 'durationMillis'
    },
    const {
      '1': 'period',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.dietfriends.fitness.BucketByTimePeriod',
      '10': 'period'
    },
  ],
};

const BucketByTimePeriod$json = const {
  '1': 'BucketByTimePeriod',
  '2': const [
    const {'1': 'timeZoneId', '3': 1, '4': 1, '5': 9, '10': 'timeZoneId'},
    const {'1': 'type', '3': 2, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'value', '3': 3, '4': 1, '5': 5, '10': 'value'},
  ],
};
