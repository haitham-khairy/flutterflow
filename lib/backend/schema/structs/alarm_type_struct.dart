// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AlarmTypeStruct extends BaseStruct {
  AlarmTypeStruct({
    String? id,
    String? type,
    String? line,
    String? sku,
    String? status,
  })  : _id = id,
        _type = type,
        _line = line,
        _sku = sku,
        _status = status;

  // "ID" field.
  String? _id;
  String get id => _id ?? '\"\"';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "Type" field.
  String? _type;
  String get type => _type ?? '\"\"';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  // "Line" field.
  String? _line;
  String get line => _line ?? '\"\"';
  set line(String? val) => _line = val;

  bool hasLine() => _line != null;

  // "SKU" field.
  String? _sku;
  String get sku => _sku ?? '\"\"';
  set sku(String? val) => _sku = val;

  bool hasSku() => _sku != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '\"\"';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  static AlarmTypeStruct fromMap(Map<String, dynamic> data) => AlarmTypeStruct(
        id: data['ID'] as String?,
        type: data['Type'] as String?,
        line: data['Line'] as String?,
        sku: data['SKU'] as String?,
        status: data['status'] as String?,
      );

  static AlarmTypeStruct? maybeFromMap(dynamic data) => data is Map
      ? AlarmTypeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'ID': _id,
        'Type': _type,
        'Line': _line,
        'SKU': _sku,
        'status': _status,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'ID': serializeParam(
          _id,
          ParamType.String,
        ),
        'Type': serializeParam(
          _type,
          ParamType.String,
        ),
        'Line': serializeParam(
          _line,
          ParamType.String,
        ),
        'SKU': serializeParam(
          _sku,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
      }.withoutNulls;

  static AlarmTypeStruct fromSerializableMap(Map<String, dynamic> data) =>
      AlarmTypeStruct(
        id: deserializeParam(
          data['ID'],
          ParamType.String,
          false,
        ),
        type: deserializeParam(
          data['Type'],
          ParamType.String,
          false,
        ),
        line: deserializeParam(
          data['Line'],
          ParamType.String,
          false,
        ),
        sku: deserializeParam(
          data['SKU'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AlarmTypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AlarmTypeStruct &&
        id == other.id &&
        type == other.type &&
        line == other.line &&
        sku == other.sku &&
        status == other.status;
  }

  @override
  int get hashCode => const ListEquality().hash([id, type, line, sku, status]);
}

AlarmTypeStruct createAlarmTypeStruct({
  String? id,
  String? type,
  String? line,
  String? sku,
  String? status,
}) =>
    AlarmTypeStruct(
      id: id,
      type: type,
      line: line,
      sku: sku,
      status: status,
    );
