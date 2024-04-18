// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'index.dart'; // Imports other custom actions

import 'index.dart'; // Imports other custom actions

import 'dart:ffi';

import 'package:zebra_rfid_sdk_plugin/zebra_event_handler.dart';
import 'package:zebra_rfid_sdk_plugin/zebra_rfid_sdk_plugin.dart';

Future<String> getRFIDReaderStatus() async {
  ReaderConnectionStatus connectionStatus = ReaderConnectionStatus.UnConnection;

  await ReaderConnectionStatus;

  ZebraRfidSdkPlugin.setEventHandler(ZebraEngineEventHandler(
    readRfidCallback: (datas) async {},
    errorCallback: (err) {
      ZebraRfidSdkPlugin.toast(err.errorMessage);
    },
    connectionStatusCallback: (status) {
      connectionStatus = status;
    },
  ));

  String connectionStatusvalue = "not connected";
  if (connectionStatus.index == 0) {
    connectionStatusvalue = "not connected";
    ZebraRfidSdkPlugin.connect();
    await Future.delayed(Duration(milliseconds: 1000));
  } else if (connectionStatus.index == 1) {
    connectionStatusvalue = "connection complete";
  } else if (connectionStatus.index == 2) {
    connectionStatusvalue = "connection error";
    ZebraRfidSdkPlugin.connect();
    await Future.delayed(Duration(milliseconds: 1000));
  }
  ;

  //return connectionStatus.index.toString();
  // Add your function code here!
  return connectionStatusvalue;
}