import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _IPConfig = prefs.getString('ff_IPConfig') ?? _IPConfig;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _RFIDReaderStatus = false;
  bool get RFIDReaderStatus => _RFIDReaderStatus;
  set RFIDReaderStatus(bool value) {
    _RFIDReaderStatus = value;
  }

  List<RFIDTagsdataStruct> _RFIDTagsList = [];
  List<RFIDTagsdataStruct> get RFIDTagsList => _RFIDTagsList;
  set RFIDTagsList(List<RFIDTagsdataStruct> value) {
    _RFIDTagsList = value;
  }

  void addToRFIDTagsList(RFIDTagsdataStruct value) {
    RFIDTagsList.add(value);
  }

  void removeFromRFIDTagsList(RFIDTagsdataStruct value) {
    RFIDTagsList.remove(value);
  }

  void removeAtIndexFromRFIDTagsList(int index) {
    RFIDTagsList.removeAt(index);
  }

  void updateRFIDTagsListAtIndex(
    int index,
    RFIDTagsdataStruct Function(RFIDTagsdataStruct) updateFn,
  ) {
    RFIDTagsList[index] = updateFn(_RFIDTagsList[index]);
  }

  void insertAtIndexInRFIDTagsList(int index, RFIDTagsdataStruct value) {
    RFIDTagsList.insert(index, value);
  }

  String _ConnectionStatus = '';
  String get ConnectionStatus => _ConnectionStatus;
  set ConnectionStatus(String value) {
    _ConnectionStatus = value;
  }

  List<QueriedTagDataStruct> _QueriedTagDataList = [];
  List<QueriedTagDataStruct> get QueriedTagDataList => _QueriedTagDataList;
  set QueriedTagDataList(List<QueriedTagDataStruct> value) {
    _QueriedTagDataList = value;
  }

  void addToQueriedTagDataList(QueriedTagDataStruct value) {
    QueriedTagDataList.add(value);
  }

  void removeFromQueriedTagDataList(QueriedTagDataStruct value) {
    QueriedTagDataList.remove(value);
  }

  void removeAtIndexFromQueriedTagDataList(int index) {
    QueriedTagDataList.removeAt(index);
  }

  void updateQueriedTagDataListAtIndex(
    int index,
    QueriedTagDataStruct Function(QueriedTagDataStruct) updateFn,
  ) {
    QueriedTagDataList[index] = updateFn(_QueriedTagDataList[index]);
  }

  void insertAtIndexInQueriedTagDataList(
      int index, QueriedTagDataStruct value) {
    QueriedTagDataList.insert(index, value);
  }

  List<AlarmTypeStruct> _AlarmsList = [];
  List<AlarmTypeStruct> get AlarmsList => _AlarmsList;
  set AlarmsList(List<AlarmTypeStruct> value) {
    _AlarmsList = value;
  }

  void addToAlarmsList(AlarmTypeStruct value) {
    AlarmsList.add(value);
  }

  void removeFromAlarmsList(AlarmTypeStruct value) {
    AlarmsList.remove(value);
  }

  void removeAtIndexFromAlarmsList(int index) {
    AlarmsList.removeAt(index);
  }

  void updateAlarmsListAtIndex(
    int index,
    AlarmTypeStruct Function(AlarmTypeStruct) updateFn,
  ) {
    AlarmsList[index] = updateFn(_AlarmsList[index]);
  }

  void insertAtIndexInAlarmsList(int index, AlarmTypeStruct value) {
    AlarmsList.insert(index, value);
  }

  List<String> _linefilters = [];
  List<String> get linefilters => _linefilters;
  set linefilters(List<String> value) {
    _linefilters = value;
  }

  void addToLinefilters(String value) {
    linefilters.add(value);
  }

  void removeFromLinefilters(String value) {
    linefilters.remove(value);
  }

  void removeAtIndexFromLinefilters(int index) {
    linefilters.removeAt(index);
  }

  void updateLinefiltersAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    linefilters[index] = updateFn(_linefilters[index]);
  }

  void insertAtIndexInLinefilters(int index, String value) {
    linefilters.insert(index, value);
  }

  List<String> _skufilters = [];
  List<String> get skufilters => _skufilters;
  set skufilters(List<String> value) {
    _skufilters = value;
  }

  void addToSkufilters(String value) {
    skufilters.add(value);
  }

  void removeFromSkufilters(String value) {
    skufilters.remove(value);
  }

  void removeAtIndexFromSkufilters(int index) {
    skufilters.removeAt(index);
  }

  void updateSkufiltersAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    skufilters[index] = updateFn(_skufilters[index]);
  }

  void insertAtIndexInSkufilters(int index, String value) {
    skufilters.insert(index, value);
  }

  String _Twix = '';
  String get Twix => _Twix;
  set Twix(String value) {
    _Twix = value;
  }

  String _Flutes = '';
  String get Flutes => _Flutes;
  set Flutes(String value) {
    _Flutes = value;
  }

  String _Molding = '';
  String get Molding => _Molding;
  set Molding(String value) {
    _Molding = value;
  }

  String _Jewels = '';
  String get Jewels => _Jewels;
  set Jewels(String value) {
    _Jewels = value;
  }

  bool _Hide = true;
  bool get Hide => _Hide;
  set Hide(bool value) {
    _Hide = value;
  }

  String _IPConfig = '';
  String get IPConfig => _IPConfig;
  set IPConfig(String value) {
    _IPConfig = value;
    prefs.setString('ff_IPConfig', value);
  }

  List<RFIDTagsdataStruct> _RFIDTagsList2 = [];
  List<RFIDTagsdataStruct> get RFIDTagsList2 => _RFIDTagsList2;
  set RFIDTagsList2(List<RFIDTagsdataStruct> value) {
    _RFIDTagsList2 = value;
  }

  void addToRFIDTagsList2(RFIDTagsdataStruct value) {
    RFIDTagsList2.add(value);
  }

  void removeFromRFIDTagsList2(RFIDTagsdataStruct value) {
    RFIDTagsList2.remove(value);
  }

  void removeAtIndexFromRFIDTagsList2(int index) {
    RFIDTagsList2.removeAt(index);
  }

  void updateRFIDTagsList2AtIndex(
    int index,
    RFIDTagsdataStruct Function(RFIDTagsdataStruct) updateFn,
  ) {
    RFIDTagsList2[index] = updateFn(_RFIDTagsList2[index]);
  }

  void insertAtIndexInRFIDTagsList2(int index, RFIDTagsdataStruct value) {
    RFIDTagsList2.insert(index, value);
  }

  List<String> _AlarmTypes = [];
  List<String> get AlarmTypes => _AlarmTypes;
  set AlarmTypes(List<String> value) {
    _AlarmTypes = value;
  }

  void addToAlarmTypes(String value) {
    AlarmTypes.add(value);
  }

  void removeFromAlarmTypes(String value) {
    AlarmTypes.remove(value);
  }

  void removeAtIndexFromAlarmTypes(int index) {
    AlarmTypes.removeAt(index);
  }

  void updateAlarmTypesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    AlarmTypes[index] = updateFn(_AlarmTypes[index]);
  }

  void insertAtIndexInAlarmTypes(int index, String value) {
    AlarmTypes.insert(index, value);
  }

  List<String> _StatusTypes = [];
  List<String> get StatusTypes => _StatusTypes;
  set StatusTypes(List<String> value) {
    _StatusTypes = value;
  }

  void addToStatusTypes(String value) {
    StatusTypes.add(value);
  }

  void removeFromStatusTypes(String value) {
    StatusTypes.remove(value);
  }

  void removeAtIndexFromStatusTypes(int index) {
    StatusTypes.removeAt(index);
  }

  void updateStatusTypesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    StatusTypes[index] = updateFn(_StatusTypes[index]);
  }

  void insertAtIndexInStatusTypes(int index, String value) {
    StatusTypes.insert(index, value);
  }

  bool _Autherized = false;
  bool get Autherized => _Autherized;
  set Autherized(bool value) {
    _Autherized = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
