// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RfidDataStruct extends BaseStruct {
  RfidDataStruct({
    String? tagID,
    int? relativeDistance,
    int? peakRSSI,
    int? count,
  })  : _tagID = tagID,
        _relativeDistance = relativeDistance,
        _peakRSSI = peakRSSI,
        _count = count;

  // "tagID" field.
  String? _tagID;
  String get tagID => _tagID ?? '';
  set tagID(String? val) => _tagID = val;
  bool hasTagID() => _tagID != null;

  // "relativeDistance" field.
  int? _relativeDistance;
  int get relativeDistance => _relativeDistance ?? 0;
  set relativeDistance(int? val) => _relativeDistance = val;
  void incrementRelativeDistance(int amount) =>
      _relativeDistance = relativeDistance + amount;
  bool hasRelativeDistance() => _relativeDistance != null;

  // "peakRSSI" field.
  int? _peakRSSI;
  int get peakRSSI => _peakRSSI ?? 0;
  set peakRSSI(int? val) => _peakRSSI = val;
  void incrementPeakRSSI(int amount) => _peakRSSI = peakRSSI + amount;
  bool hasPeakRSSI() => _peakRSSI != null;

  // "count" field.
  int? _count;
  int get count => _count ?? 0;
  set count(int? val) => _count = val;
  void incrementCount(int amount) => _count = count + amount;
  bool hasCount() => _count != null;

  static RfidDataStruct fromMap(Map<String, dynamic> data) => RfidDataStruct(
        tagID: data['tagID'] as String?,
        relativeDistance: castToType<int>(data['relativeDistance']),
        peakRSSI: castToType<int>(data['peakRSSI']),
        count: castToType<int>(data['count']),
      );

  static RfidDataStruct? maybeFromMap(dynamic data) =>
      data is Map ? RfidDataStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'tagID': _tagID,
        'relativeDistance': _relativeDistance,
        'peakRSSI': _peakRSSI,
        'count': _count,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'tagID': serializeParam(
          _tagID,
          ParamType.String,
        ),
        'relativeDistance': serializeParam(
          _relativeDistance,
          ParamType.int,
        ),
        'peakRSSI': serializeParam(
          _peakRSSI,
          ParamType.int,
        ),
        'count': serializeParam(
          _count,
          ParamType.int,
        ),
      }.withoutNulls;

  static RfidDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      RfidDataStruct(
        tagID: deserializeParam(
          data['tagID'],
          ParamType.String,
          false,
        ),
        relativeDistance: deserializeParam(
          data['relativeDistance'],
          ParamType.int,
          false,
        ),
        peakRSSI: deserializeParam(
          data['peakRSSI'],
          ParamType.int,
          false,
        ),
        count: deserializeParam(
          data['count'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'RfidDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RfidDataStruct &&
        tagID == other.tagID &&
        relativeDistance == other.relativeDistance &&
        peakRSSI == other.peakRSSI &&
        count == other.count;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([tagID, relativeDistance, peakRSSI, count]);
}

RfidDataStruct createRfidDataStruct({
  String? tagID,
  int? relativeDistance,
  int? peakRSSI,
  int? count,
}) =>
    RfidDataStruct(
      tagID: tagID,
      relativeDistance: relativeDistance,
      peakRSSI: peakRSSI,
      count: count,
    );
