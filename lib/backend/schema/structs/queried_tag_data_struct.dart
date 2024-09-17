// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QueriedTagDataStruct extends BaseStruct {
  QueriedTagDataStruct({
    String? tagID,
    String? line,
    String? printDate,
    String? washingCount,
    String? lastTimeWashed,
    String? lifetime,
    String? color,
    String? sku,
    String? maxWashCount,
    String? washOverDue,
    String? status,
    String? daysRemaining,
    String? alarms,
    String? remainingDaysInServeic,
  })  : _tagID = tagID,
        _line = line,
        _printDate = printDate,
        _washingCount = washingCount,
        _lastTimeWashed = lastTimeWashed,
        _lifetime = lifetime,
        _color = color,
        _sku = sku,
        _maxWashCount = maxWashCount,
        _washOverDue = washOverDue,
        _status = status,
        _daysRemaining = daysRemaining,
        _alarms = alarms,
        _remainingDaysInServeic = remainingDaysInServeic;

  // "TagID" field.
  String? _tagID;
  String get tagID => _tagID ?? '\"\"';
  set tagID(String? val) => _tagID = val;

  bool hasTagID() => _tagID != null;

  // "Line" field.
  String? _line;
  String get line => _line ?? '\"\"';
  set line(String? val) => _line = val;

  bool hasLine() => _line != null;

  // "PrintDate" field.
  String? _printDate;
  String get printDate => _printDate ?? '\"\"';
  set printDate(String? val) => _printDate = val;

  bool hasPrintDate() => _printDate != null;

  // "WashingCount" field.
  String? _washingCount;
  String get washingCount => _washingCount ?? '\"\"';
  set washingCount(String? val) => _washingCount = val;

  bool hasWashingCount() => _washingCount != null;

  // "LastTimeWashed" field.
  String? _lastTimeWashed;
  String get lastTimeWashed => _lastTimeWashed ?? '\"\"';
  set lastTimeWashed(String? val) => _lastTimeWashed = val;

  bool hasLastTimeWashed() => _lastTimeWashed != null;

  // "Lifetime" field.
  String? _lifetime;
  String get lifetime => _lifetime ?? '\"\"';
  set lifetime(String? val) => _lifetime = val;

  bool hasLifetime() => _lifetime != null;

  // "Color" field.
  String? _color;
  String get color => _color ?? '\"\"';
  set color(String? val) => _color = val;

  bool hasColor() => _color != null;

  // "SKU" field.
  String? _sku;
  String get sku => _sku ?? '\"\"';
  set sku(String? val) => _sku = val;

  bool hasSku() => _sku != null;

  // "MaxWashCount" field.
  String? _maxWashCount;
  String get maxWashCount => _maxWashCount ?? '\"\"';
  set maxWashCount(String? val) => _maxWashCount = val;

  bool hasMaxWashCount() => _maxWashCount != null;

  // "WashOverDue" field.
  String? _washOverDue;
  String get washOverDue => _washOverDue ?? '\"\"';
  set washOverDue(String? val) => _washOverDue = val;

  bool hasWashOverDue() => _washOverDue != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '\"\"';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "daysRemaining" field.
  String? _daysRemaining;
  String get daysRemaining => _daysRemaining ?? '\"\"';
  set daysRemaining(String? val) => _daysRemaining = val;

  bool hasDaysRemaining() => _daysRemaining != null;

  // "Alarms" field.
  String? _alarms;
  String get alarms => _alarms ?? '\"\"';
  set alarms(String? val) => _alarms = val;

  bool hasAlarms() => _alarms != null;

  // "RemainingDaysInServeic" field.
  String? _remainingDaysInServeic;
  String get remainingDaysInServeic => _remainingDaysInServeic ?? '\"\"';
  set remainingDaysInServeic(String? val) => _remainingDaysInServeic = val;

  bool hasRemainingDaysInServeic() => _remainingDaysInServeic != null;

  static QueriedTagDataStruct fromMap(Map<String, dynamic> data) =>
      QueriedTagDataStruct(
        tagID: data['TagID'] as String?,
        line: data['Line'] as String?,
        printDate: data['PrintDate'] as String?,
        washingCount: data['WashingCount'] as String?,
        lastTimeWashed: data['LastTimeWashed'] as String?,
        lifetime: data['Lifetime'] as String?,
        color: data['Color'] as String?,
        sku: data['SKU'] as String?,
        maxWashCount: data['MaxWashCount'] as String?,
        washOverDue: data['WashOverDue'] as String?,
        status: data['status'] as String?,
        daysRemaining: data['daysRemaining'] as String?,
        alarms: data['Alarms'] as String?,
        remainingDaysInServeic: data['RemainingDaysInServeic'] as String?,
      );

  static QueriedTagDataStruct? maybeFromMap(dynamic data) => data is Map
      ? QueriedTagDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'TagID': _tagID,
        'Line': _line,
        'PrintDate': _printDate,
        'WashingCount': _washingCount,
        'LastTimeWashed': _lastTimeWashed,
        'Lifetime': _lifetime,
        'Color': _color,
        'SKU': _sku,
        'MaxWashCount': _maxWashCount,
        'WashOverDue': _washOverDue,
        'status': _status,
        'daysRemaining': _daysRemaining,
        'Alarms': _alarms,
        'RemainingDaysInServeic': _remainingDaysInServeic,
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
        'PrintDate': serializeParam(
          _printDate,
          ParamType.String,
        ),
        'WashingCount': serializeParam(
          _washingCount,
          ParamType.String,
        ),
        'LastTimeWashed': serializeParam(
          _lastTimeWashed,
          ParamType.String,
        ),
        'Lifetime': serializeParam(
          _lifetime,
          ParamType.String,
        ),
        'Color': serializeParam(
          _color,
          ParamType.String,
        ),
        'SKU': serializeParam(
          _sku,
          ParamType.String,
        ),
        'MaxWashCount': serializeParam(
          _maxWashCount,
          ParamType.String,
        ),
        'WashOverDue': serializeParam(
          _washOverDue,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'daysRemaining': serializeParam(
          _daysRemaining,
          ParamType.String,
        ),
        'Alarms': serializeParam(
          _alarms,
          ParamType.String,
        ),
        'RemainingDaysInServeic': serializeParam(
          _remainingDaysInServeic,
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
        printDate: deserializeParam(
          data['PrintDate'],
          ParamType.String,
          false,
        ),
        washingCount: deserializeParam(
          data['WashingCount'],
          ParamType.String,
          false,
        ),
        lastTimeWashed: deserializeParam(
          data['LastTimeWashed'],
          ParamType.String,
          false,
        ),
        lifetime: deserializeParam(
          data['Lifetime'],
          ParamType.String,
          false,
        ),
        color: deserializeParam(
          data['Color'],
          ParamType.String,
          false,
        ),
        sku: deserializeParam(
          data['SKU'],
          ParamType.String,
          false,
        ),
        maxWashCount: deserializeParam(
          data['MaxWashCount'],
          ParamType.String,
          false,
        ),
        washOverDue: deserializeParam(
          data['WashOverDue'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        daysRemaining: deserializeParam(
          data['daysRemaining'],
          ParamType.String,
          false,
        ),
        alarms: deserializeParam(
          data['Alarms'],
          ParamType.String,
          false,
        ),
        remainingDaysInServeic: deserializeParam(
          data['RemainingDaysInServeic'],
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
        printDate == other.printDate &&
        washingCount == other.washingCount &&
        lastTimeWashed == other.lastTimeWashed &&
        lifetime == other.lifetime &&
        color == other.color &&
        sku == other.sku &&
        maxWashCount == other.maxWashCount &&
        washOverDue == other.washOverDue &&
        status == other.status &&
        daysRemaining == other.daysRemaining &&
        alarms == other.alarms &&
        remainingDaysInServeic == other.remainingDaysInServeic;
  }

  @override
  int get hashCode => const ListEquality().hash([
        tagID,
        line,
        printDate,
        washingCount,
        lastTimeWashed,
        lifetime,
        color,
        sku,
        maxWashCount,
        washOverDue,
        status,
        daysRemaining,
        alarms,
        remainingDaysInServeic
      ]);
}

QueriedTagDataStruct createQueriedTagDataStruct({
  String? tagID,
  String? line,
  String? printDate,
  String? washingCount,
  String? lastTimeWashed,
  String? lifetime,
  String? color,
  String? sku,
  String? maxWashCount,
  String? washOverDue,
  String? status,
  String? daysRemaining,
  String? alarms,
  String? remainingDaysInServeic,
}) =>
    QueriedTagDataStruct(
      tagID: tagID,
      line: line,
      printDate: printDate,
      washingCount: washingCount,
      lastTimeWashed: lastTimeWashed,
      lifetime: lifetime,
      color: color,
      sku: sku,
      maxWashCount: maxWashCount,
      washOverDue: washOverDue,
      status: status,
      daysRemaining: daysRemaining,
      alarms: alarms,
      remainingDaysInServeic: remainingDaysInServeic,
    );
