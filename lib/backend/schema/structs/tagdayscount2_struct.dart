// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Tagdayscount2Struct extends BaseStruct {
  Tagdayscount2Struct({
    double? tagdayscount3,
  }) : _tagdayscount3 = tagdayscount3;

  // "tagdayscount3" field.
  double? _tagdayscount3;
  double get tagdayscount3 => _tagdayscount3 ?? 1.0;
  set tagdayscount3(double? val) => _tagdayscount3 = val;
  void incrementTagdayscount3(double amount) =>
      _tagdayscount3 = tagdayscount3 + amount;
  bool hasTagdayscount3() => _tagdayscount3 != null;

  static Tagdayscount2Struct fromMap(Map<String, dynamic> data) =>
      Tagdayscount2Struct(
        tagdayscount3: castToType<double>(data['tagdayscount3']),
      );

  static Tagdayscount2Struct? maybeFromMap(dynamic data) => data is Map
      ? Tagdayscount2Struct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'tagdayscount3': _tagdayscount3,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'tagdayscount3': serializeParam(
          _tagdayscount3,
          ParamType.double,
        ),
      }.withoutNulls;

  static Tagdayscount2Struct fromSerializableMap(Map<String, dynamic> data) =>
      Tagdayscount2Struct(
        tagdayscount3: deserializeParam(
          data['tagdayscount3'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'Tagdayscount2Struct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is Tagdayscount2Struct && tagdayscount3 == other.tagdayscount3;
  }

  @override
  int get hashCode => const ListEquality().hash([tagdayscount3]);
}

Tagdayscount2Struct createTagdayscount2Struct({
  double? tagdayscount3,
}) =>
    Tagdayscount2Struct(
      tagdayscount3: tagdayscount3,
    );
