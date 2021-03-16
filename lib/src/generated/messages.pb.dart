///
//  Generated code. Do not modify.
//  source: messages.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class ActivityLog extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ActivityLog',
      package: const $pb.PackageName('dietfriends.fitness'),
      createEmptyInstance: create)
    ..aOS(1, 'activityType', protoName: 'activityType')
    ..aOS(2, 'activityId', protoName: 'activityId')
    ..a<$core.double>(3, 'totalCaloriesBurned', $pb.PbFieldType.OD,
        protoName: 'totalCaloriesBurned')
    ..aOS(4, 'duration')
    ..aOS(5, 'totalDistance', protoName: 'totalDistance')
    ..aOS(6, 'source')
    ..hasRequiredFields = false;

  ActivityLog._() : super();
  factory ActivityLog() => create();
  factory ActivityLog.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ActivityLog.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ActivityLog clone() => ActivityLog()..mergeFromMessage(this);
  ActivityLog copyWith(void Function(ActivityLog) updates) =>
      super.copyWith((message) => updates(message as ActivityLog));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ActivityLog create() => ActivityLog._();
  ActivityLog createEmptyInstance() => create();
  static $pb.PbList<ActivityLog> createRepeated() => $pb.PbList<ActivityLog>();
  @$core.pragma('dart2js:noInline')
  static ActivityLog getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ActivityLog>(create);
  static ActivityLog _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get activityType => $_getSZ(0);
  @$pb.TagNumber(1)
  set activityType($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasActivityType() => $_has(0);
  @$pb.TagNumber(1)
  void clearActivityType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get activityId => $_getSZ(1);
  @$pb.TagNumber(2)
  set activityId($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasActivityId() => $_has(1);
  @$pb.TagNumber(2)
  void clearActivityId() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get totalCaloriesBurned => $_getN(2);
  @$pb.TagNumber(3)
  set totalCaloriesBurned($core.double v) {
    $_setDouble(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasTotalCaloriesBurned() => $_has(2);
  @$pb.TagNumber(3)
  void clearTotalCaloriesBurned() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get duration => $_getSZ(3);
  @$pb.TagNumber(4)
  set duration($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasDuration() => $_has(3);
  @$pb.TagNumber(4)
  void clearDuration() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get totalDistance => $_getSZ(4);
  @$pb.TagNumber(5)
  set totalDistance($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasTotalDistance() => $_has(4);
  @$pb.TagNumber(5)
  void clearTotalDistance() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get source => $_getSZ(5);
  @$pb.TagNumber(6)
  set source($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasSource() => $_has(5);
  @$pb.TagNumber(6)
  void clearSource() => clearField(6);
}

class ListActivityLogsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListActivityLogsResponse',
      package: const $pb.PackageName('dietfriends.fitness'),
      createEmptyInstance: create)
    ..pc<ActivityLog>(1, 'activityLogs', $pb.PbFieldType.PM,
        protoName: 'activityLogs', subBuilder: ActivityLog.create)
    ..hasRequiredFields = false;

  ListActivityLogsResponse._() : super();
  factory ListActivityLogsResponse() => create();
  factory ListActivityLogsResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListActivityLogsResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ListActivityLogsResponse clone() =>
      ListActivityLogsResponse()..mergeFromMessage(this);
  ListActivityLogsResponse copyWith(
          void Function(ListActivityLogsResponse) updates) =>
      super.copyWith((message) => updates(message as ListActivityLogsResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListActivityLogsResponse create() => ListActivityLogsResponse._();
  ListActivityLogsResponse createEmptyInstance() => create();
  static $pb.PbList<ListActivityLogsResponse> createRepeated() =>
      $pb.PbList<ListActivityLogsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListActivityLogsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListActivityLogsResponse>(create);
  static ListActivityLogsResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ActivityLog> get activityLogs => $_getList(0);
}

class ListActivityLogsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListActivityLogsRequest',
      package: const $pb.PackageName('dietfriends.fitness'),
      createEmptyInstance: create)
    ..aInt64(1, 'startTime', protoName: 'startTime')
    ..aInt64(2, 'endTime', protoName: 'endTime')
    ..hasRequiredFields = false;

  ListActivityLogsRequest._() : super();
  factory ListActivityLogsRequest() => create();
  factory ListActivityLogsRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListActivityLogsRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ListActivityLogsRequest clone() =>
      ListActivityLogsRequest()..mergeFromMessage(this);
  ListActivityLogsRequest copyWith(
          void Function(ListActivityLogsRequest) updates) =>
      super.copyWith((message) => updates(message as ListActivityLogsRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListActivityLogsRequest create() => ListActivityLogsRequest._();
  ListActivityLogsRequest createEmptyInstance() => create();
  static $pb.PbList<ListActivityLogsRequest> createRepeated() =>
      $pb.PbList<ListActivityLogsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListActivityLogsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListActivityLogsRequest>(create);
  static ListActivityLogsRequest _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get startTime => $_getI64(0);
  @$pb.TagNumber(1)
  set startTime($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasStartTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearStartTime() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get endTime => $_getI64(1);
  @$pb.TagNumber(2)
  set endTime($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasEndTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearEndTime() => clearField(2);
}
