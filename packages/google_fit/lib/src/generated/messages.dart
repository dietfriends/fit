// Autogenerated from Pigeon (v2.0.3), do not edit directly.
// See also: https://pub.dev/packages/pigeon
// ignore_for_file: public_member_api_docs, non_constant_identifier_names, avoid_as, unused_import, unnecessary_parenthesis, prefer_null_aware_operators, omit_local_variable_types, unused_shown_name
// @dart = 2.12
import 'dart:async';
import 'dart:typed_data' show Uint8List, Int32List, Int64List, Float64List;

import 'package:flutter/foundation.dart' show WriteBuffer, ReadBuffer;
import 'package:flutter/services.dart';

enum DataType {
  duration,
  calorie,
  speed,
  distance,
  step,
  unknwon,
}

enum DataSourceType {
  typeDerieved,
  typeRaw,
}

class AggregateResponse {
  AggregateResponse({
    required this.buckets,
  });

  List<Bucket?> buckets;

  Object encode() {
    final Map<Object?, Object?> pigeonMap = <Object?, Object?>{};
    pigeonMap['buckets'] = buckets;
    return pigeonMap;
  }

  static AggregateResponse decode(Object message) {
    final Map<Object?, Object?> pigeonMap = message as Map<Object?, Object?>;
    return AggregateResponse(
      buckets: (pigeonMap['buckets'] as List<Object?>?)!.cast<Bucket?>(),
    );
  }
}

class Bucket {
  Bucket({
    required this.startTime,
    required this.endTime,
    this.session,
    required this.dataSets,
  });

  int startTime;
  int endTime;
  Session? session;
  List<DataSet?> dataSets;

  Object encode() {
    final Map<Object?, Object?> pigeonMap = <Object?, Object?>{};
    pigeonMap['startTime'] = startTime;
    pigeonMap['endTime'] = endTime;
    pigeonMap['session'] = session == null ? null : session!.encode();
    pigeonMap['dataSets'] = dataSets;
    return pigeonMap;
  }

  static Bucket decode(Object message) {
    final Map<Object?, Object?> pigeonMap = message as Map<Object?, Object?>;
    return Bucket(
      startTime: pigeonMap['startTime']! as int,
      endTime: pigeonMap['endTime']! as int,
      session: pigeonMap['session'] != null
          ? Session.decode(pigeonMap['session']!)
          : null,
      dataSets: (pigeonMap['dataSets'] as List<Object?>?)!.cast<DataSet?>(),
    );
  }
}

class Session {
  Session({
    required this.activity,
    required this.indentifier,
    required this.description,
    this.name,
  });

  String activity;
  String indentifier;
  String description;
  String? name;

  Object encode() {
    final Map<Object?, Object?> pigeonMap = <Object?, Object?>{};
    pigeonMap['activity'] = activity;
    pigeonMap['indentifier'] = indentifier;
    pigeonMap['description'] = description;
    pigeonMap['name'] = name;
    return pigeonMap;
  }

  static Session decode(Object message) {
    final Map<Object?, Object?> pigeonMap = message as Map<Object?, Object?>;
    return Session(
      activity: pigeonMap['activity']! as String,
      indentifier: pigeonMap['indentifier']! as String,
      description: pigeonMap['description']! as String,
      name: pigeonMap['name'] as String?,
    );
  }
}

class DataSource {
  DataSource({
    this.appPackageName,
    required this.streamIdentifier,
    required this.streamName,
  });

  String? appPackageName;
  String streamIdentifier;
  String streamName;

  Object encode() {
    final Map<Object?, Object?> pigeonMap = <Object?, Object?>{};
    pigeonMap['appPackageName'] = appPackageName;
    pigeonMap['streamIdentifier'] = streamIdentifier;
    pigeonMap['streamName'] = streamName;
    return pigeonMap;
  }

  static DataSource decode(Object message) {
    final Map<Object?, Object?> pigeonMap = message as Map<Object?, Object?>;
    return DataSource(
      appPackageName: pigeonMap['appPackageName'] as String?,
      streamIdentifier: pigeonMap['streamIdentifier']! as String,
      streamName: pigeonMap['streamName']! as String,
    );
  }
}

class DataSet {
  DataSet({
    this.dataType,
    required this.isEmpty,
    required this.dataPoints,
    this.dataSource,
  });

  DataType? dataType;
  bool isEmpty;
  List<DataPoint?> dataPoints;
  DataSource? dataSource;

  Object encode() {
    final Map<Object?, Object?> pigeonMap = <Object?, Object?>{};
    pigeonMap['dataType'] = dataType == null ? null : dataType!.index;
    pigeonMap['isEmpty'] = isEmpty;
    pigeonMap['dataPoints'] = dataPoints;
    pigeonMap['dataSource'] = dataSource == null ? null : dataSource!.encode();
    return pigeonMap;
  }

  static DataSet decode(Object message) {
    final Map<Object?, Object?> pigeonMap = message as Map<Object?, Object?>;
    return DataSet(
      dataType: pigeonMap['dataType'] != null
          ? DataType.values[pigeonMap['dataType']! as int]
          : null,
      isEmpty: pigeonMap['isEmpty']! as bool,
      dataPoints: (pigeonMap['dataPoints'] as List<Object?>?)!.cast<DataPoint?>(),
      dataSource: pigeonMap['dataSource'] != null
          ? DataSource.decode(pigeonMap['dataSource']!)
          : null,
    );
  }
}

class DataPoint {
  DataPoint({
    required this.values,
  });

  List<DataPointValue?> values;

  Object encode() {
    final Map<Object?, Object?> pigeonMap = <Object?, Object?>{};
    pigeonMap['values'] = values;
    return pigeonMap;
  }

  static DataPoint decode(Object message) {
    final Map<Object?, Object?> pigeonMap = message as Map<Object?, Object?>;
    return DataPoint(
      values: (pigeonMap['values'] as List<Object?>?)!.cast<DataPointValue?>(),
    );
  }
}

class DataPointValue {
  DataPointValue({
    required this.valueType,
    required this.value,
  });

  String valueType;
  String value;

  Object encode() {
    final Map<Object?, Object?> pigeonMap = <Object?, Object?>{};
    pigeonMap['valueType'] = valueType;
    pigeonMap['value'] = value;
    return pigeonMap;
  }

  static DataPointValue decode(Object message) {
    final Map<Object?, Object?> pigeonMap = message as Map<Object?, Object?>;
    return DataPointValue(
      valueType: pigeonMap['valueType']! as String,
      value: pigeonMap['value']! as String,
    );
  }
}

class _GoogleFitClientCodec extends StandardMessageCodec {
  const _GoogleFitClientCodec();
  @override
  void writeValue(WriteBuffer buffer, Object? value) {
    if (value is AggregateResponse) {
      buffer.putUint8(128);
      writeValue(buffer, value.encode());
    } else 
    if (value is Bucket) {
      buffer.putUint8(129);
      writeValue(buffer, value.encode());
    } else 
    if (value is DataPoint) {
      buffer.putUint8(130);
      writeValue(buffer, value.encode());
    } else 
    if (value is DataPointValue) {
      buffer.putUint8(131);
      writeValue(buffer, value.encode());
    } else 
    if (value is DataSet) {
      buffer.putUint8(132);
      writeValue(buffer, value.encode());
    } else 
    if (value is DataSource) {
      buffer.putUint8(133);
      writeValue(buffer, value.encode());
    } else 
    if (value is Session) {
      buffer.putUint8(134);
      writeValue(buffer, value.encode());
    } else 
{
      super.writeValue(buffer, value);
    }
  }
  @override
  Object? readValueOfType(int type, ReadBuffer buffer) {
    switch (type) {
      case 128:       
        return AggregateResponse.decode(readValue(buffer)!);
      
      case 129:       
        return Bucket.decode(readValue(buffer)!);
      
      case 130:       
        return DataPoint.decode(readValue(buffer)!);
      
      case 131:       
        return DataPointValue.decode(readValue(buffer)!);
      
      case 132:       
        return DataSet.decode(readValue(buffer)!);
      
      case 133:       
        return DataSource.decode(readValue(buffer)!);
      
      case 134:       
        return Session.decode(readValue(buffer)!);
      
      default:      
        return super.readValueOfType(type, buffer);
      
    }
  }
}

class GoogleFitClient {
  /// Constructor for [GoogleFitClient].  The [binaryMessenger] named argument is
  /// available for dependency injection.  If it is left null, the default
  /// BinaryMessenger will be used which routes to the host platform.
  GoogleFitClient({BinaryMessenger? binaryMessenger}) : _binaryMessenger = binaryMessenger;

  final BinaryMessenger? _binaryMessenger;

  static const MessageCodec<Object?> codec = _GoogleFitClientCodec();

  Future<bool> hasPermissions() async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.GoogleFitClient.hasPermissions', codec, binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(null) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error = (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else if (replyMap['result'] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyMap['result'] as bool?)!;
    }
  }

  Future<bool> requestAuthorization() async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.GoogleFitClient.requestAuthorization', codec, binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(null) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error = (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else if (replyMap['result'] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyMap['result'] as bool?)!;
    }
  }

  Future<AggregateResponse> aggregate(int arg_startTimeMillis, int arg_endTimeMillis) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.GoogleFitClient.aggregate', codec, binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(<Object?>[arg_startTimeMillis, arg_endTimeMillis]) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error = (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else if (replyMap['result'] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyMap['result'] as AggregateResponse?)!;
    }
  }
}
