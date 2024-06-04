// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QueriedTagDataStruct extends BaseStruct {
  QueriedTagDataStruct({
    String? tagID,
    String? line,
    String? lifetime,
    String? washCount,
    String? alarm,
  })  : _tagID = tagID,
        _line = line,
        _lifetime = lifetime,
        _washCount = washCount,
        _alarm = alarm;

  // "TagID" field.
  String? _tagID;
  String get tagID => _tagID ?? '';
  set tagID(String? val) => _tagID = val;
  bool hasTagID() => _tagID != null;

  // "Line" field.
  String? _line;
  String get line => _line ?? '';
  set line(String? val) => _line = val;
  bool hasLine() => _line != null;

  // "Lifetime" field.
  String? _lifetime;
  String get lifetime => _lifetime ?? '';
  set lifetime(String? val) => _lifetime = val;
  bool hasLifetime() => _lifetime != null;

  // "WashCount" field.
  String? _washCount;
  String get washCount => _washCount ?? '';
  set washCount(String? val) => _washCount = val;
  bool hasWashCount() => _washCount != null;

  // "Alarm" field.
  String? _alarm;
  String get alarm => _alarm ?? '';
  set alarm(String? val) => _alarm = val;
  bool hasAlarm() => _alarm != null;

  static QueriedTagDataStruct fromMap(Map<String, dynamic> data) =>
      QueriedTagDataStruct(
        tagID: data['TagID'] as String?,
        line: data['Line'] as String?,
        lifetime: data['Lifetime'] as String?,
        washCount: data['WashCount'] as String?,
        alarm: data['Alarm'] as String?,
      );

  static QueriedTagDataStruct? maybeFromMap(dynamic data) => data is Map
      ? QueriedTagDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'TagID': _tagID,
        'Line': _line,
        'Lifetime': _lifetime,
        'WashCount': _washCount,
        'Alarm': _alarm,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'TagID': serializeParam(
          _tagID,
          ParamType.String,
        ),
        'Line': serializeParam(
          _line,
          ParamType.String,
        ),
        'Lifetime': serializeParam(
          _lifetime,
          ParamType.String,
        ),
        'WashCount': serializeParam(
          _washCount,
          ParamType.String,
        ),
        'Alarm': serializeParam(
          _alarm,
          ParamType.String,
        ),
      }.withoutNulls;

  static QueriedTagDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      QueriedTagDataStruct(
        tagID: deserializeParam(
          data['TagID'],
          ParamType.String,
          false,
        ),
        line: deserializeParam(
          data['Line'],
          ParamType.String,
          false,
        ),
        lifetime: deserializeParam(
          data['Lifetime'],
          ParamType.String,
          false,
        ),
        washCount: deserializeParam(
          data['WashCount'],
          ParamType.String,
          false,
        ),
        alarm: deserializeParam(
          data['Alarm'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'QueriedTagDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is QueriedTagDataStruct &&
        tagID == other.tagID &&
        line == other.line &&
        lifetime == other.lifetime &&
        washCount == other.washCount &&
        alarm == other.alarm;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([tagID, line, lifetime, washCount, alarm]);
}

QueriedTagDataStruct createQueriedTagDataStruct({
  String? tagID,
  String? line,
  String? lifetime,
  String? washCount,
  String? alarm,
}) =>
    QueriedTagDataStruct(
      tagID: tagID,
      line: line,
      lifetime: lifetime,
      washCount: washCount,
      alarm: alarm,
    );
