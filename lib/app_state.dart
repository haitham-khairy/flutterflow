import 'package:flutter/material.dart';

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
}