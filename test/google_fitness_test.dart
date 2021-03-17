import 'package:fit/src/google/google_auth_client.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:googleapis/fitness/v1.dart';
import 'dart:core' as $core;
import 'package:pretty_json/pretty_json.dart';

void main() {
  test('test', () async {
    final client = GoogleAuthClient({
      'authorization':
    });

    final test = FitnessApi(client);

    final bucket = BucketByTime()
      ..period = (BucketByTimePeriod()
        ..type = 'month'
        ..value = 3
        ..timeZoneId = 'Asia/Seoul');

    final request = AggregateRequest()
          ..aggregateBy = [
            /*
            AggregateBy()
              ..dataTypeName = 'com.google.step_count.delta'
              ..dataSourceId =
                  'derived:com.google.step_count.delta:com.google.android.gms:estimated_steps',*/
            //AggregateBy()
            //..dataTypeName = 'com.google.calories.expended'
            //..dataTypeName = 'com.google.activity.segment',
            AggregateBy()..dataTypeName = 'com.google.calories.expended',
            //..dataSourceId =
            //    'derived:com.google.calories.expended:com.google.android.gms:from_activities',
            AggregateBy()..dataTypeName = 'com.google.step_count.delta',
            AggregateBy()..dataTypeName = 'com.google.active_minutes',
            AggregateBy()..dataTypeName = 'com.google.speed',
            AggregateBy()..dataTypeName = 'com.google.distance.delta',
          ]
          //..bucketByTime = (BucketByTime()..durationMillis = '86400000')
          ..bucketByActivitySegment = (BucketByActivity())
          //..bucketBySession = (BucketBySession()..minDurationMillis = '1000')
          ..startTimeMillis = $core.DateTime(2021, 3, 14, 0, 0, 0)
              .millisecondsSinceEpoch
              .toString()
          ..endTimeMillis = $core.DateTime(2021, 3, 14, 23, 59, 59)
              .millisecondsSinceEpoch
              .toString()
        //..bucketBySession = (BucketBySession()..minDurationMillis = '1000')
        //..bucketByTime = bucket
        /*
      ..startTimeMillis = DateTime.now()
          .subtract(Duration(days: 1))
          .millisecondsSinceEpoch
          .toString()*/
        ;

    try {
      final sessions = await test.users.sessions.list(
        'me',
        startTime: '2021-02-01T15:00:00Z',
        activityType: [7],
      ); //.aggregate(request, 'me');
      $core.print('t');
      $core.print(sessions.toJson());
    } catch (e) {
      $core.print(e);
    }

    try {
      final dataSources = await test.users.dataSources.list('me');
      dataSources.dataSource.forEach((element) {
        element.dataStreamId;
      });
      //print(dataSources.toJson());
    } catch (e) {
      $core.print(e);
    }

    try {
      final aggreagte = await test.users.dataset.aggregate(request, 'me');
      $core.print(prettyJson(aggreagte.toJson()));

      var sum = 0.0;
      aggreagte.bucket.forEach((element) {
        final found = element.dataset.firstWhere((element) =>
            element.dataSourceId ==
            'derived:com.google.step_count.delta:com.google.android.gms:aggregated');
        if (found != null) {
          try {
            sum += found.point.first.value.first.intVal;
          } catch (e) {}
        }
      });
      $core.print('sum : $sum');
    } catch (e) {
      $core.print(e);
    }
  });
}
