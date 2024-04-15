// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:ffi';

import 'package:zebra_rfid_sdk_plugin/zebra_event_handler.dart';
import 'package:zebra_rfid_sdk_plugin/zebra_rfid_sdk_plugin.dart';

Map<String?, RfidData> rfidDatas = {};

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

Future<int> readtagcount() async {
  // ZebraRfidSdkPlugin.disconnect();
  return rfidDatas.length;
  // Add your function code here!
}
