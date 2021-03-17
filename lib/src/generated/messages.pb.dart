///
//  Generated code. Do not modify.
//  source: messages.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/struct.pb.dart' as $0;

class Session extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Session',
      package: const $pb.PackageName('dietfriends.fitness'),
      createEmptyInstance: create)
    ..aOS(1, 'activeTimeMillis', protoName: 'activeTimeMillis')
    ..a<$core.int>(2, 'activityType', $pb.PbFieldType.O3,
        protoName: 'activityType')
    ..aOS(4, 'description')
    ..aOS(5, 'endTimeMillis', protoName: 'endTimeMillis')
    ..aOS(6, 'id')
    ..aOS(7, 'modifiedTimeMillis', protoName: 'modifiedTimeMillis')
    ..aOS(8, 'name')
    ..aOS(9, 'startTimeMillis', protoName: 'startTimeMillis')
    ..hasRequiredFields = false;

  Session._() : super();
  factory Session() => create();
  factory Session.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Session.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Session clone() => Session()..mergeFromMessage(this);
  Session copyWith(void Function(Session) updates) =>
      super.copyWith((message) => updates(message as Session));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Session create() => Session._();
  Session createEmptyInstance() => create();
  static $pb.PbList<Session> createRepeated() => $pb.PbList<Session>();
  @$core.pragma('dart2js:noInline')
  static Session getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Session>(create);
  static Session _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get activeTimeMillis => $_getSZ(0);
  @$pb.TagNumber(1)
  set activeTimeMillis($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasActiveTimeMillis() => $_has(0);
  @$pb.TagNumber(1)
  void clearActiveTimeMillis() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get activityType => $_getIZ(1);
  @$pb.TagNumber(2)
  set activityType($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasActivityType() => $_has(1);
  @$pb.TagNumber(2)
  void clearActivityType() => clearField(2);

  @$pb.TagNumber(4)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(4)
  set description($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(4)
  void clearDescription() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get endTimeMillis => $_getSZ(3);
  @$pb.TagNumber(5)
  set endTimeMillis($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasEndTimeMillis() => $_has(3);
  @$pb.TagNumber(5)
  void clearEndTimeMillis() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get id => $_getSZ(4);
  @$pb.TagNumber(6)
  set id($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasId() => $_has(4);
  @$pb.TagNumber(6)
  void clearId() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get modifiedTimeMillis => $_getSZ(5);
  @$pb.TagNumber(7)
  set modifiedTimeMillis($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasModifiedTimeMillis() => $_has(5);
  @$pb.TagNumber(7)
  void clearModifiedTimeMillis() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get name => $_getSZ(6);
  @$pb.TagNumber(8)
  set name($core.String v) {
    $_setString(6, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasName() => $_has(6);
  @$pb.TagNumber(8)
  void clearName() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get startTimeMillis => $_getSZ(7);
  @$pb.TagNumber(9)
  set startTimeMillis($core.String v) {
    $_setString(7, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasStartTimeMillis() => $_has(7);
  @$pb.TagNumber(9)
  void clearStartTimeMillis() => clearField(9);
}

class ListSessionsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListSessionsResponse',
      package: const $pb.PackageName('dietfriends.fitness'),
      createEmptyInstance: create)
    ..pc<Session>(1, 'deletedSession', $pb.PbFieldType.PM,
        protoName: 'deletedSession', subBuilder: Session.create)
    ..aOB(2, 'hasMoreData', protoName: 'hasMoreData')
    ..aOS(3, 'nextPageToken', protoName: 'nextPageToken')
    ..pc<Session>(4, 'session', $pb.PbFieldType.PM, subBuilder: Session.create)
    ..hasRequiredFields = false;

  ListSessionsResponse._() : super();
  factory ListSessionsResponse() => create();
  factory ListSessionsResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListSessionsResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ListSessionsResponse clone() =>
      ListSessionsResponse()..mergeFromMessage(this);
  ListSessionsResponse copyWith(void Function(ListSessionsResponse) updates) =>
      super.copyWith((message) => updates(message as ListSessionsResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListSessionsResponse create() => ListSessionsResponse._();
  ListSessionsResponse createEmptyInstance() => create();
  static $pb.PbList<ListSessionsResponse> createRepeated() =>
      $pb.PbList<ListSessionsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListSessionsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListSessionsResponse>(create);
  static ListSessionsResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Session> get deletedSession => $_getList(0);

  @$pb.TagNumber(2)
  $core.bool get hasMoreData => $_getBF(1);
  @$pb.TagNumber(2)
  set hasMoreData($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasHasMoreData() => $_has(1);
  @$pb.TagNumber(2)
  void clearHasMoreData() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get nextPageToken => $_getSZ(2);
  @$pb.TagNumber(3)
  set nextPageToken($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasNextPageToken() => $_has(2);
  @$pb.TagNumber(3)
  void clearNextPageToken() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<Session> get session => $_getList(3);
}

class ListSessionsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListSessionsRequest',
      package: const $pb.PackageName('dietfriends.fitness'),
      createEmptyInstance: create)
    ..p<$core.int>(1, 'activityType', $pb.PbFieldType.P3,
        protoName: 'activityType')
    ..aInt64(2, 'endTime', protoName: 'endTime')
    ..aOB(3, 'includeDeleted', protoName: 'includeDeleted')
    ..aOS(4, 'pageToken', protoName: 'pageToken')
    ..aInt64(5, 'startTime', protoName: 'startTime')
    ..aOS(6, 'fields')
    ..hasRequiredFields = false;

  ListSessionsRequest._() : super();
  factory ListSessionsRequest() => create();
  factory ListSessionsRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListSessionsRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ListSessionsRequest clone() => ListSessionsRequest()..mergeFromMessage(this);
  ListSessionsRequest copyWith(void Function(ListSessionsRequest) updates) =>
      super.copyWith((message) => updates(message as ListSessionsRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListSessionsRequest create() => ListSessionsRequest._();
  ListSessionsRequest createEmptyInstance() => create();
  static $pb.PbList<ListSessionsRequest> createRepeated() =>
      $pb.PbList<ListSessionsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListSessionsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListSessionsRequest>(create);
  static ListSessionsRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get activityType => $_getList(0);

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

  @$pb.TagNumber(3)
  $core.bool get includeDeleted => $_getBF(2);
  @$pb.TagNumber(3)
  set includeDeleted($core.bool v) {
    $_setBool(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasIncludeDeleted() => $_has(2);
  @$pb.TagNumber(3)
  void clearIncludeDeleted() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get pageToken => $_getSZ(3);
  @$pb.TagNumber(4)
  set pageToken($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasPageToken() => $_has(3);
  @$pb.TagNumber(4)
  void clearPageToken() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get startTime => $_getI64(4);
  @$pb.TagNumber(5)
  set startTime($fixnum.Int64 v) {
    $_setInt64(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasStartTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearStartTime() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get fields => $_getSZ(5);
  @$pb.TagNumber(6)
  set fields($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasFields() => $_has(5);
  @$pb.TagNumber(6)
  void clearFields() => clearField(6);
}

class AggregateResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AggregateResponse',
      package: const $pb.PackageName('dietfriends.fitness'),
      createEmptyInstance: create)
    ..pc<AggregateBucket>(1, 'bucket', $pb.PbFieldType.PM,
        subBuilder: AggregateBucket.create)
    ..hasRequiredFields = false;

  AggregateResponse._() : super();
  factory AggregateResponse() => create();
  factory AggregateResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AggregateResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  AggregateResponse clone() => AggregateResponse()..mergeFromMessage(this);
  AggregateResponse copyWith(void Function(AggregateResponse) updates) =>
      super.copyWith((message) => updates(message as AggregateResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AggregateResponse create() => AggregateResponse._();
  AggregateResponse createEmptyInstance() => create();
  static $pb.PbList<AggregateResponse> createRepeated() =>
      $pb.PbList<AggregateResponse>();
  @$core.pragma('dart2js:noInline')
  static AggregateResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AggregateResponse>(create);
  static AggregateResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<AggregateBucket> get bucket => $_getList(0);
}

class AggregateBucket extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AggregateBucket',
      package: const $pb.PackageName('dietfriends.fitness'),
      createEmptyInstance: create)
    ..a<$core.int>(1, 'activity', $pb.PbFieldType.O3)
    ..pc<Dataset>(2, 'dataset', $pb.PbFieldType.PM, subBuilder: Dataset.create)
    ..aInt64(3, 'endTimeMillis', protoName: 'endTimeMillis')
    ..aOM<Session>(4, 'session', subBuilder: Session.create)
    ..aInt64(5, 'startTimeMillis', protoName: 'startTimeMillis')
    ..aOS(6, 'type')
    ..hasRequiredFields = false;

  AggregateBucket._() : super();
  factory AggregateBucket() => create();
  factory AggregateBucket.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AggregateBucket.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  AggregateBucket clone() => AggregateBucket()..mergeFromMessage(this);
  AggregateBucket copyWith(void Function(AggregateBucket) updates) =>
      super.copyWith((message) => updates(message as AggregateBucket));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AggregateBucket create() => AggregateBucket._();
  AggregateBucket createEmptyInstance() => create();
  static $pb.PbList<AggregateBucket> createRepeated() =>
      $pb.PbList<AggregateBucket>();
  @$core.pragma('dart2js:noInline')
  static AggregateBucket getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AggregateBucket>(create);
  static AggregateBucket _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get activity => $_getIZ(0);
  @$pb.TagNumber(1)
  set activity($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasActivity() => $_has(0);
  @$pb.TagNumber(1)
  void clearActivity() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<Dataset> get dataset => $_getList(1);

  @$pb.TagNumber(3)
  $fixnum.Int64 get endTimeMillis => $_getI64(2);
  @$pb.TagNumber(3)
  set endTimeMillis($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasEndTimeMillis() => $_has(2);
  @$pb.TagNumber(3)
  void clearEndTimeMillis() => clearField(3);

  @$pb.TagNumber(4)
  Session get session => $_getN(3);
  @$pb.TagNumber(4)
  set session(Session v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasSession() => $_has(3);
  @$pb.TagNumber(4)
  void clearSession() => clearField(4);
  @$pb.TagNumber(4)
  Session ensureSession() => $_ensure(3);

  @$pb.TagNumber(5)
  $fixnum.Int64 get startTimeMillis => $_getI64(4);
  @$pb.TagNumber(5)
  set startTimeMillis($fixnum.Int64 v) {
    $_setInt64(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasStartTimeMillis() => $_has(4);
  @$pb.TagNumber(5)
  void clearStartTimeMillis() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get type => $_getSZ(5);
  @$pb.TagNumber(6)
  set type($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasType() => $_has(5);
  @$pb.TagNumber(6)
  void clearType() => clearField(6);
}

class Dataset extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Dataset',
      package: const $pb.PackageName('dietfriends.fitness'),
      createEmptyInstance: create)
    ..aOS(1, 'dataSourceId', protoName: 'dataSourceId')
    ..aOS(2, 'maxEndTimeNs', protoName: 'maxEndTimeNs')
    ..aOS(3, 'minStartTimeNs', protoName: 'minStartTimeNs')
    ..aOS(4, 'nextPageToken', protoName: 'nextPageToken')
    ..pc<DataPoint>(5, 'point', $pb.PbFieldType.PM,
        subBuilder: DataPoint.create)
    ..hasRequiredFields = false;

  Dataset._() : super();
  factory Dataset() => create();
  factory Dataset.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Dataset.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Dataset clone() => Dataset()..mergeFromMessage(this);
  Dataset copyWith(void Function(Dataset) updates) =>
      super.copyWith((message) => updates(message as Dataset));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Dataset create() => Dataset._();
  Dataset createEmptyInstance() => create();
  static $pb.PbList<Dataset> createRepeated() => $pb.PbList<Dataset>();
  @$core.pragma('dart2js:noInline')
  static Dataset getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Dataset>(create);
  static Dataset _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dataSourceId => $_getSZ(0);
  @$pb.TagNumber(1)
  set dataSourceId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasDataSourceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDataSourceId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get maxEndTimeNs => $_getSZ(1);
  @$pb.TagNumber(2)
  set maxEndTimeNs($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMaxEndTimeNs() => $_has(1);
  @$pb.TagNumber(2)
  void clearMaxEndTimeNs() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get minStartTimeNs => $_getSZ(2);
  @$pb.TagNumber(3)
  set minStartTimeNs($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasMinStartTimeNs() => $_has(2);
  @$pb.TagNumber(3)
  void clearMinStartTimeNs() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get nextPageToken => $_getSZ(3);
  @$pb.TagNumber(4)
  set nextPageToken($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasNextPageToken() => $_has(3);
  @$pb.TagNumber(4)
  void clearNextPageToken() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<DataPoint> get point => $_getList(4);
}

class DataPoint extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DataPoint',
      package: const $pb.PackageName('dietfriends.fitness'),
      createEmptyInstance: create)
    ..aOS(1, 'computationTimeMillis', protoName: 'computationTimeMillis')
    ..aOS(2, 'dataTypeName', protoName: 'dataTypeName')
    ..aOS(3, 'endTimeNanos', protoName: 'endTimeNanos')
    ..aOS(4, 'modifiedTimeMillis', protoName: 'modifiedTimeMillis')
    ..aOS(5, 'originDataSourceId', protoName: 'originDataSourceId')
    ..aOS(6, 'rawTimestampNanos', protoName: 'rawTimestampNanos')
    ..aOS(7, 'startTimeNanos', protoName: 'startTimeNanos')
    ..pc<DataPoint>(8, 'value', $pb.PbFieldType.PM,
        subBuilder: DataPoint.create)
    ..hasRequiredFields = false;

  DataPoint._() : super();
  factory DataPoint() => create();
  factory DataPoint.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DataPoint.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  DataPoint clone() => DataPoint()..mergeFromMessage(this);
  DataPoint copyWith(void Function(DataPoint) updates) =>
      super.copyWith((message) => updates(message as DataPoint));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DataPoint create() => DataPoint._();
  DataPoint createEmptyInstance() => create();
  static $pb.PbList<DataPoint> createRepeated() => $pb.PbList<DataPoint>();
  @$core.pragma('dart2js:noInline')
  static DataPoint getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DataPoint>(create);
  static DataPoint _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get computationTimeMillis => $_getSZ(0);
  @$pb.TagNumber(1)
  set computationTimeMillis($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasComputationTimeMillis() => $_has(0);
  @$pb.TagNumber(1)
  void clearComputationTimeMillis() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get dataTypeName => $_getSZ(1);
  @$pb.TagNumber(2)
  set dataTypeName($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasDataTypeName() => $_has(1);
  @$pb.TagNumber(2)
  void clearDataTypeName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get endTimeNanos => $_getSZ(2);
  @$pb.TagNumber(3)
  set endTimeNanos($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasEndTimeNanos() => $_has(2);
  @$pb.TagNumber(3)
  void clearEndTimeNanos() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get modifiedTimeMillis => $_getSZ(3);
  @$pb.TagNumber(4)
  set modifiedTimeMillis($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasModifiedTimeMillis() => $_has(3);
  @$pb.TagNumber(4)
  void clearModifiedTimeMillis() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get originDataSourceId => $_getSZ(4);
  @$pb.TagNumber(5)
  set originDataSourceId($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasOriginDataSourceId() => $_has(4);
  @$pb.TagNumber(5)
  void clearOriginDataSourceId() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get rawTimestampNanos => $_getSZ(5);
  @$pb.TagNumber(6)
  set rawTimestampNanos($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasRawTimestampNanos() => $_has(5);
  @$pb.TagNumber(6)
  void clearRawTimestampNanos() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get startTimeNanos => $_getSZ(6);
  @$pb.TagNumber(7)
  set startTimeNanos($core.String v) {
    $_setString(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasStartTimeNanos() => $_has(6);
  @$pb.TagNumber(7)
  void clearStartTimeNanos() => clearField(7);

  @$pb.TagNumber(8)
  $core.List<DataPoint> get value => $_getList(7);
}

enum DataPointValue_Kind { fpVal, intVal, mapVal, stringVal, notSet }

class DataPointValue extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, DataPointValue_Kind>
      _DataPointValue_KindByTag = {
    1: DataPointValue_Kind.fpVal,
    2: DataPointValue_Kind.intVal,
    3: DataPointValue_Kind.mapVal,
    4: DataPointValue_Kind.stringVal,
    0: DataPointValue_Kind.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DataPointValue',
      package: const $pb.PackageName('dietfriends.fitness'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4])
    ..a<$core.double>(1, 'fpVal', $pb.PbFieldType.OD, protoName: 'fpVal')
    ..aInt64(2, 'intVal', protoName: 'intVal')
    ..aOM<$0.Struct>(3, 'mapVal',
        protoName: 'mapVal', subBuilder: $0.Struct.create)
    ..aOS(4, 'stringVal', protoName: 'stringVal')
    ..hasRequiredFields = false;

  DataPointValue._() : super();
  factory DataPointValue() => create();
  factory DataPointValue.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DataPointValue.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  DataPointValue clone() => DataPointValue()..mergeFromMessage(this);
  DataPointValue copyWith(void Function(DataPointValue) updates) =>
      super.copyWith((message) => updates(message as DataPointValue));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DataPointValue create() => DataPointValue._();
  DataPointValue createEmptyInstance() => create();
  static $pb.PbList<DataPointValue> createRepeated() =>
      $pb.PbList<DataPointValue>();
  @$core.pragma('dart2js:noInline')
  static DataPointValue getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DataPointValue>(create);
  static DataPointValue _defaultInstance;

  DataPointValue_Kind whichKind() => _DataPointValue_KindByTag[$_whichOneof(0)];
  void clearKind() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.double get fpVal => $_getN(0);
  @$pb.TagNumber(1)
  set fpVal($core.double v) {
    $_setDouble(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFpVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearFpVal() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get intVal => $_getI64(1);
  @$pb.TagNumber(2)
  set intVal($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasIntVal() => $_has(1);
  @$pb.TagNumber(2)
  void clearIntVal() => clearField(2);

  @$pb.TagNumber(3)
  $0.Struct get mapVal => $_getN(2);
  @$pb.TagNumber(3)
  set mapVal($0.Struct v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasMapVal() => $_has(2);
  @$pb.TagNumber(3)
  void clearMapVal() => clearField(3);
  @$pb.TagNumber(3)
  $0.Struct ensureMapVal() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get stringVal => $_getSZ(3);
  @$pb.TagNumber(4)
  set stringVal($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasStringVal() => $_has(3);
  @$pb.TagNumber(4)
  void clearStringVal() => clearField(4);
}

class AggregateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AggregateRequest',
      package: const $pb.PackageName('dietfriends.fitness'),
      createEmptyInstance: create)
    ..pc<AggregateBy>(1, 'aggregateBy', $pb.PbFieldType.PM,
        protoName: 'aggregateBy', subBuilder: AggregateBy.create)
    ..aOM<BucketByActivity>(2, 'bucketByActivitySegment',
        protoName: 'bucketByActivitySegment',
        subBuilder: BucketByActivity.create)
    ..aOM<BucketByActivity>(3, 'bucketByActivityType',
        protoName: 'bucketByActivityType', subBuilder: BucketByActivity.create)
    ..aOM<BucketBySession>(4, 'bucketBySession',
        protoName: 'bucketBySession', subBuilder: BucketBySession.create)
    ..aOM<BucketByTime>(5, 'bucketByTime',
        protoName: 'bucketByTime', subBuilder: BucketByTime.create)
    ..aInt64(6, 'endTimeMillis', protoName: 'endTimeMillis')
    ..pPS(7, 'filteredDataQualityStandard',
        protoName: 'filteredDataQualityStandard')
    ..aInt64(8, 'startTimeMillis', protoName: 'startTimeMillis')
    ..hasRequiredFields = false;

  AggregateRequest._() : super();
  factory AggregateRequest() => create();
  factory AggregateRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AggregateRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  AggregateRequest clone() => AggregateRequest()..mergeFromMessage(this);
  AggregateRequest copyWith(void Function(AggregateRequest) updates) =>
      super.copyWith((message) => updates(message as AggregateRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AggregateRequest create() => AggregateRequest._();
  AggregateRequest createEmptyInstance() => create();
  static $pb.PbList<AggregateRequest> createRepeated() =>
      $pb.PbList<AggregateRequest>();
  @$core.pragma('dart2js:noInline')
  static AggregateRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AggregateRequest>(create);
  static AggregateRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<AggregateBy> get aggregateBy => $_getList(0);

  @$pb.TagNumber(2)
  BucketByActivity get bucketByActivitySegment => $_getN(1);
  @$pb.TagNumber(2)
  set bucketByActivitySegment(BucketByActivity v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasBucketByActivitySegment() => $_has(1);
  @$pb.TagNumber(2)
  void clearBucketByActivitySegment() => clearField(2);
  @$pb.TagNumber(2)
  BucketByActivity ensureBucketByActivitySegment() => $_ensure(1);

  @$pb.TagNumber(3)
  BucketByActivity get bucketByActivityType => $_getN(2);
  @$pb.TagNumber(3)
  set bucketByActivityType(BucketByActivity v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasBucketByActivityType() => $_has(2);
  @$pb.TagNumber(3)
  void clearBucketByActivityType() => clearField(3);
  @$pb.TagNumber(3)
  BucketByActivity ensureBucketByActivityType() => $_ensure(2);

  @$pb.TagNumber(4)
  BucketBySession get bucketBySession => $_getN(3);
  @$pb.TagNumber(4)
  set bucketBySession(BucketBySession v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasBucketBySession() => $_has(3);
  @$pb.TagNumber(4)
  void clearBucketBySession() => clearField(4);
  @$pb.TagNumber(4)
  BucketBySession ensureBucketBySession() => $_ensure(3);

  @$pb.TagNumber(5)
  BucketByTime get bucketByTime => $_getN(4);
  @$pb.TagNumber(5)
  set bucketByTime(BucketByTime v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasBucketByTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearBucketByTime() => clearField(5);
  @$pb.TagNumber(5)
  BucketByTime ensureBucketByTime() => $_ensure(4);

  @$pb.TagNumber(6)
  $fixnum.Int64 get endTimeMillis => $_getI64(5);
  @$pb.TagNumber(6)
  set endTimeMillis($fixnum.Int64 v) {
    $_setInt64(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasEndTimeMillis() => $_has(5);
  @$pb.TagNumber(6)
  void clearEndTimeMillis() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.String> get filteredDataQualityStandard => $_getList(6);

  @$pb.TagNumber(8)
  $fixnum.Int64 get startTimeMillis => $_getI64(7);
  @$pb.TagNumber(8)
  set startTimeMillis($fixnum.Int64 v) {
    $_setInt64(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasStartTimeMillis() => $_has(7);
  @$pb.TagNumber(8)
  void clearStartTimeMillis() => clearField(8);
}

class AggregateBy extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AggregateBy',
      package: const $pb.PackageName('dietfriends.fitness'),
      createEmptyInstance: create)
    ..aOS(1, 'dataSourceId', protoName: 'dataSourceId')
    ..aOS(2, 'dataTypeName', protoName: 'dataTypeName')
    ..hasRequiredFields = false;

  AggregateBy._() : super();
  factory AggregateBy() => create();
  factory AggregateBy.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AggregateBy.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  AggregateBy clone() => AggregateBy()..mergeFromMessage(this);
  AggregateBy copyWith(void Function(AggregateBy) updates) =>
      super.copyWith((message) => updates(message as AggregateBy));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AggregateBy create() => AggregateBy._();
  AggregateBy createEmptyInstance() => create();
  static $pb.PbList<AggregateBy> createRepeated() => $pb.PbList<AggregateBy>();
  @$core.pragma('dart2js:noInline')
  static AggregateBy getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AggregateBy>(create);
  static AggregateBy _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dataSourceId => $_getSZ(0);
  @$pb.TagNumber(1)
  set dataSourceId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasDataSourceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDataSourceId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get dataTypeName => $_getSZ(1);
  @$pb.TagNumber(2)
  set dataTypeName($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasDataTypeName() => $_has(1);
  @$pb.TagNumber(2)
  void clearDataTypeName() => clearField(2);
}

class BucketByActivity extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BucketByActivity',
      package: const $pb.PackageName('dietfriends.fitness'),
      createEmptyInstance: create)
    ..aOS(1, 'activityDataSourceId', protoName: 'activityDataSourceId')
    ..aInt64(2, 'minDurationMillis', protoName: 'minDurationMillis')
    ..hasRequiredFields = false;

  BucketByActivity._() : super();
  factory BucketByActivity() => create();
  factory BucketByActivity.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BucketByActivity.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  BucketByActivity clone() => BucketByActivity()..mergeFromMessage(this);
  BucketByActivity copyWith(void Function(BucketByActivity) updates) =>
      super.copyWith((message) => updates(message as BucketByActivity));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BucketByActivity create() => BucketByActivity._();
  BucketByActivity createEmptyInstance() => create();
  static $pb.PbList<BucketByActivity> createRepeated() =>
      $pb.PbList<BucketByActivity>();
  @$core.pragma('dart2js:noInline')
  static BucketByActivity getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BucketByActivity>(create);
  static BucketByActivity _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get activityDataSourceId => $_getSZ(0);
  @$pb.TagNumber(1)
  set activityDataSourceId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasActivityDataSourceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearActivityDataSourceId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get minDurationMillis => $_getI64(1);
  @$pb.TagNumber(2)
  set minDurationMillis($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMinDurationMillis() => $_has(1);
  @$pb.TagNumber(2)
  void clearMinDurationMillis() => clearField(2);
}

class BucketBySession extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BucketBySession',
      package: const $pb.PackageName('dietfriends.fitness'),
      createEmptyInstance: create)
    ..aInt64(1, 'minDurationMillis', protoName: 'minDurationMillis')
    ..hasRequiredFields = false;

  BucketBySession._() : super();
  factory BucketBySession() => create();
  factory BucketBySession.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BucketBySession.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  BucketBySession clone() => BucketBySession()..mergeFromMessage(this);
  BucketBySession copyWith(void Function(BucketBySession) updates) =>
      super.copyWith((message) => updates(message as BucketBySession));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BucketBySession create() => BucketBySession._();
  BucketBySession createEmptyInstance() => create();
  static $pb.PbList<BucketBySession> createRepeated() =>
      $pb.PbList<BucketBySession>();
  @$core.pragma('dart2js:noInline')
  static BucketBySession getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BucketBySession>(create);
  static BucketBySession _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get minDurationMillis => $_getI64(0);
  @$pb.TagNumber(1)
  set minDurationMillis($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasMinDurationMillis() => $_has(0);
  @$pb.TagNumber(1)
  void clearMinDurationMillis() => clearField(1);
}

class BucketByTime extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BucketByTime',
      package: const $pb.PackageName('dietfriends.fitness'),
      createEmptyInstance: create)
    ..aInt64(1, 'durationMillis', protoName: 'durationMillis')
    ..aOM<BucketByTimePeriod>(2, 'period',
        subBuilder: BucketByTimePeriod.create)
    ..hasRequiredFields = false;

  BucketByTime._() : super();
  factory BucketByTime() => create();
  factory BucketByTime.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BucketByTime.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  BucketByTime clone() => BucketByTime()..mergeFromMessage(this);
  BucketByTime copyWith(void Function(BucketByTime) updates) =>
      super.copyWith((message) => updates(message as BucketByTime));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BucketByTime create() => BucketByTime._();
  BucketByTime createEmptyInstance() => create();
  static $pb.PbList<BucketByTime> createRepeated() =>
      $pb.PbList<BucketByTime>();
  @$core.pragma('dart2js:noInline')
  static BucketByTime getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BucketByTime>(create);
  static BucketByTime _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get durationMillis => $_getI64(0);
  @$pb.TagNumber(1)
  set durationMillis($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasDurationMillis() => $_has(0);
  @$pb.TagNumber(1)
  void clearDurationMillis() => clearField(1);

  @$pb.TagNumber(2)
  BucketByTimePeriod get period => $_getN(1);
  @$pb.TagNumber(2)
  set period(BucketByTimePeriod v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasPeriod() => $_has(1);
  @$pb.TagNumber(2)
  void clearPeriod() => clearField(2);
  @$pb.TagNumber(2)
  BucketByTimePeriod ensurePeriod() => $_ensure(1);
}

class BucketByTimePeriod extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BucketByTimePeriod',
      package: const $pb.PackageName('dietfriends.fitness'),
      createEmptyInstance: create)
    ..aOS(1, 'timeZoneId', protoName: 'timeZoneId')
    ..aOS(2, 'type')
    ..a<$core.int>(3, 'value', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  BucketByTimePeriod._() : super();
  factory BucketByTimePeriod() => create();
  factory BucketByTimePeriod.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BucketByTimePeriod.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  BucketByTimePeriod clone() => BucketByTimePeriod()..mergeFromMessage(this);
  BucketByTimePeriod copyWith(void Function(BucketByTimePeriod) updates) =>
      super.copyWith((message) => updates(message as BucketByTimePeriod));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BucketByTimePeriod create() => BucketByTimePeriod._();
  BucketByTimePeriod createEmptyInstance() => create();
  static $pb.PbList<BucketByTimePeriod> createRepeated() =>
      $pb.PbList<BucketByTimePeriod>();
  @$core.pragma('dart2js:noInline')
  static BucketByTimePeriod getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BucketByTimePeriod>(create);
  static BucketByTimePeriod _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get timeZoneId => $_getSZ(0);
  @$pb.TagNumber(1)
  set timeZoneId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTimeZoneId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimeZoneId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get type => $_getSZ(1);
  @$pb.TagNumber(2)
  set type($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get value => $_getIZ(2);
  @$pb.TagNumber(3)
  set value($core.int v) {
    $_setSignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearValue() => clearField(3);
}
