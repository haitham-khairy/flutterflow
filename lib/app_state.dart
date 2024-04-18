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
    _RFIDTagsList.add(value);
  }

  void removeFromRFIDTagsList(RFIDTagsdataStruct value) {
    _RFIDTagsList.remove(value);
  }

  void removeAtIndexFromRFIDTagsList(int index) {
    _RFIDTagsList.removeAt(index);
  }

  void updateRFIDTagsListAtIndex(
    int index,
    RFIDTagsdataStruct Function(RFIDTagsdataStruct) updateFn,
  ) {
    _RFIDTagsList[index] = updateFn(_RFIDTagsList[index]);
  }

  void insertAtIndexInRFIDTagsList(int index, RFIDTagsdataStruct value) {
    _RFIDTagsList.insert(index, value);
  }
}
