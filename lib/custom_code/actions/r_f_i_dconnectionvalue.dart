// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'index.dart'; // Imports other custom actions

import 'dart:ffi';

import 'package:zebra_rfid_sdk_plugin/zebra_event_handler.dart';
import 'package:zebra_rfid_sdk_plugin/zebra_rfid_sdk_plugin.dart';

Map<String?, RfidData> rfidDatas = {};
ReaderConnectionStatus connectionStatus = ReaderConnectionStatus.UnConnection;
addDatas(List<RfidData> datas) async {
  for (var item in datas) {
    var data = rfidDatas[item.tagID];
    if (data != null) {
      if (data.count == null) data.count = 0;
      data.count = data.count + 1;
      data.peakRSSI = item.peakRSSI;
      data.relativeDistance = item.relativeDistance;
    } else
      rfidDatas.addAll({item.tagID: item});
  }
}

Future<int> rFIDconnectionvalue() async {
  ZebraRfidSdkPlugin.setEventHandler(ZebraEngineEventHandler(
    readRfidCallback: (datas) async {
      addDatas(datas);
    },
    errorCallback: (err) {
      ZebraRfidSdkPlugin.toast(err.errorMessage);
    },
    connectionStatusCallback: (status) {
      //   connectionStatus = status;
    },
  ));
  ZebraRfidSdkPlugin.connect();
  await Future.delayed(Duration(milliseconds: 100));

  final state = await connectionStatus.index;

  return Datas;
  // Add your function code here!
}
