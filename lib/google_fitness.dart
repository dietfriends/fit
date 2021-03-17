import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:fit/src/generated/messages.pb.dart';
import 'package:fit/src/more_struct.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:googleapis/fitness/v1.dart' as $fitness;
import 'package:http/src/client.dart';
import 'package:fixnum/fixnum.dart' as $fixnum;
import 'src/generated/messages.dart';
import 'src/google/google_auth_client.dart';
import 'src/google/messages.dart';
export 'src/provider.dart';

class GoogleFitness {
  static $fitness.FitnessApi _restApiInstance;
  static GoogleFitApi _apiInstance;
  static GoogleAuthClient _client = GoogleAuthClient();
  static GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      $fitness.FitnessApi.fitnessActivityReadScope,
    ],
  );

  static FitnessSession _sessionInstance;

  GoogleFitness();

  static GoogleFitApi get _googleFit {
    if (_apiInstance == null) {
      _apiInstance = GoogleFitApi();
    }
    return _apiInstance;
  }

  static $fitness.FitnessApi get _restApi {
    if (_restApiInstance == null) {
      _restApiInstance = $fitness.FitnessApi(_client);
    }
    return _restApiInstance;
  }

  static Future<void> init() {
    return _googleFit.initialize();
  }

  static Future<void> dispose() {
    return _googleFit.dispose();
  }

  static checkPermission() async {
    if (Platform.isAndroid) {
      if (_googleSignIn.currentUser == null) {
        await _googleSignIn.signIn();
      }
    }
    await _googleFit.checkPermission();
    _client.headers = await _googleSignIn.currentUser.authHeaders;
  }

  static FitnessSession get sessions =>
      _sessionInstance ??= FitnessSession(_restApi, _googleFit);
}

class FitnessSession {
  final $fitness.FitnessApi _restApi;
  final GoogleFitApi _sdk;

  FitnessSession(this._restApi, this._sdk);

  Future<ListSessionsResponse> list({
    List<int> activityType = const [],
    DateTime endTime,
    bool includeDeleted = false,
    String pageToken,
    DateTime startTime,
    String $fields,
    GoogleFitnessSource source,
  }) async {
    //if (Platform.isAndroid || source == GoogleFitnessSource.sdk) {
    if (false) {
      // TODO

      final request = (ListSessionsRequest()
        ..activityType.addAll(activityType)
        ..includeDeleted = includeDeleted);

      if (startTime != null) {
        request.startTime = $fixnum.Int64(startTime?.millisecondsSinceEpoch);
      }
      if (endTime != null) {
        request.endTime = $fixnum.Int64(endTime?.millisecondsSinceEpoch);
      }
      if (pageToken != null) {
        request.pageToken = pageToken;
      }
      if ($fields != null) {
        request.fields = $fields;
      }

      final response = await _sdk
          .sessionsList(ProtoWrapper()..proto = request.writeToBuffer());

      return ListSessionsResponse.fromBuffer(response.proto);
    } else {
      final response = await _restApi.users.sessions.list('me',
          activityType: activityType,
          endTime: endTime.toUtc().toIso8601String(),
          includeDeleted: includeDeleted,
          pageToken: pageToken,
          startTime: startTime.toUtc().toIso8601String(),
          $fields: $fields);

      return ListSessionsResponseX.fromFitness(response);
    }
  }

  Future<AggregateResponse> aggregate(
    AggregateRequest request, {
    String fields,
  }) async {
    final aggregateRequest = $fitness.AggregateRequest();

    if (request.hasBucketByActivitySegment()) {
      aggregateRequest.bucketByActivitySegment =
          $fitness.BucketByActivity.fromJson(
              request.bucketByActivitySegment.writeToJsonMap());
    }

    if (request.hasBucketByActivityType()) {
      aggregateRequest.bucketByActivityType =
          $fitness.BucketByActivity.fromJson(
              request.bucketByActivityType.writeToJsonMap());
    }

    if (request.hasBucketBySession()) {
      aggregateRequest.bucketBySession = $fitness.BucketBySession.fromJson(
          request.bucketBySession.writeToJsonMap());
    }

    if (request.hasBucketByTime()) {
      aggregateRequest.bucketByTime =
          $fitness.BucketByTime.fromJson(request.bucketByTime.writeToJsonMap());
    }

    if (request.hasStartTimeMillis() && request.startTimeMillis > 0) {
      aggregateRequest.startTimeMillis = request.startTimeMillis.toString();
    }
    if (request.hasEndTimeMillis() && request.endTimeMillis > 0) {
      aggregateRequest.endTimeMillis = request.endTimeMillis.toString();
    }
    if (fields != null) {}

    final response =
        await _restApi.users.dataset.aggregate(aggregateRequest, 'me');

    return AggregateResponse.fromJson(jsonEncode(response.toJson()));
  }
}

enum GoogleFitnessSource { sdk, rest }
