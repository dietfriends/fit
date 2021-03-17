/*import 'generated/google/protobuf/struct.pb.dart';

extension MoreStruct on Struct {
  static Struct from(Map<String, dynamic> map) {
    return Struct()
      ..fields.addAll(map.map((key, value) {
        return MapEntry(key, MoreValue.from(value));
      }));
  }
}

extension MoreValue on Value {
  static Value from(dynamic dartValue) {
    if (dartValue is num) {
      return Value()..numberValue = dartValue.toDouble();
    } else if (dartValue is bool) {
      return Value()..boolValue = dartValue;
    } else if (dartValue is String) {
      return Value()..stringValue = dartValue;
    } else if (dartValue is List) {
      return Value()..listValue = MoreList.from(dartValue);
    } else if (dartValue is Map) {
      return Value()..structValue = MoreStruct.from(dartValue);
    }
    return Value()..nullValue = NullValue.NULL_VALUE;
  }
}

extension MoreList on ListValue {
  static ListValue from(List list) {
    return ListValue()..values.addAll(list.map((e) => MoreValue.from(e)));
  }
}
*/
