import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

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
  }
}
