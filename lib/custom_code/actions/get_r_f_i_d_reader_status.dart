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

import 'index.dart'; // Imports other custom actions

import 'dart:ffi';

import 'package:zebra_rfid_sdk_plugin/zebra_event_handler.dart';
import 'package:zebra_rfid_sdk_plugin/zebra_rfid_sdk_plugin.dart';

ReaderConnectionStatus connectionStatus = ReaderConnectionStatus.UnConnection;

Future<String> getRFIDReaderStatus() async {
  await connectionStatus.index;

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
  } else if (connectionStatus.index == 1) {
    connectionStatusvalue = "connected";
  } else if (connectionStatus.index == 2) {
    connectionStatusvalue = "connection error";
  }
  ;

  //return connectionStatus.index.toString();
  // Add your function code here!
  return connectionStatusvalue;
}
