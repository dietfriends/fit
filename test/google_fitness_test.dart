import 'package:fit/src/google/google_auth_client.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:googleapis/fitness/v1.dart';

void main() {
  test('test', () async {
    final client = GoogleAuthClient({
      'authorization':
          'Bearer ya29.a0AfH6SMAW8zoWcmJqEs-4eGtSkFIZ-MPPaXRljcnCuk2ilVdX8jqpC8VFQNh4RyHBiRLW5JaOlgmrDgZ7_PNIIQbrmKN_t_x4E7jBUZebLbAG4t75cSLtyoZ_hqYXT8Xds7CBgGVJ-5TDpVp1maLiJsAasH2h'
    });

    final test = FitnessApi(client);

    final bucket = BucketByTime()
      ..period = (BucketByTimePeriod()
        ..type = 'month'
        ..value = 3
        ..timeZoneId = 'Asia/Seoul');

    final request = AggregateRequest()
          ..aggregateBy = [
            AggregateBy()..dataTypeName = 'com.google.calories.expended',
          ]
          // ..bucketByTime = BucketByTime()
          ..bucketBySession = (BucketBySession()..minDurationMillis = '1000')
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
        startTime: '2021-02-01T16:38:44Z',
      ); //.aggregate(request, 'me');
      print('t');
      print(sessions.toJson());
    } catch (e) {
      print(e);
    }

    try {
      final dataSources = await test.users.dataSources.list('me');
      dataSources.dataSource.forEach((element) {
        element.dataStreamId;
      });
      print('t');
      //print(dataSources.toJson());
    } catch (e) {
      print(e);
    }

    try {
      final aggreagte = await test.users.dataset.aggregate(request, 'me');
      print(aggreagte.toJson());
    } catch (e) {
      print(e);
    }
  });
}
