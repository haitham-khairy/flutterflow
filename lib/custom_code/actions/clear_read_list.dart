// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'index.dart'; // Imports other custom actions

import 'package:flutter/services.dart';
import 'package:zebra_rfid_sdk_plugin/zebra_event_handler.dart';
import 'package:zebra_rfid_sdk_plugin/zebra_rfid_sdk_plugin.dart';

Map<String?, RfidData> rfidDatas = {};
ReaderConnectionStatus connectionStatus = ReaderConnectionStatus.UnConnection;

Future<List<RFIDTagsdataStruct>> clearReadList() async {
  List<RFIDTagsdataStruct> frfid = [];

  ZebraRfidSdkPlugin.connect();
  await Future.delayed(Duration(milliseconds: 100));

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

  await Future.delayed(Duration(milliseconds: 100));
  for (int i = 0; i < rfidDatas.length; i++) {
    frfid.add(RFIDTagsdataStruct(
      tagID: rfidDatas.values.elementAt(i).tagID,
    ));
  }
  frfid.clear();

/*
  frfid.add(RFIDTagsdataStruct(
    tagID: rfidDatas.values.first.tagID,
    peakRSSI: rfidDatas.values.first.peakRSSI,
  ));
  frfid.add(RFIDTagsdataStruct(
    tagID: "test25",
    peakRSSI: rfidDatas.values.first.peakRSSI,
  ));  */
  return frfid;
}
