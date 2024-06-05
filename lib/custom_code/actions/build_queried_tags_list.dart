// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<List<QueriedTagDataStruct>?> buildQueriedTagsList(
  List<String> id,
  List<String> line,
  List<String> printdate,
  List<String> washingcount,
  List<String> lasttimewashed,
  List<String> lifetime,
) async {
  QueriedTagDataStruct? element;
  List<QueriedTagDataStruct>? result = [];
  for (int i = 0; i < id.length; i++) {
    element!.tagID = id[i];
    element.line = line[i];
    element.printDate = printdate[i];
    element.washingCount = washingcount[i];
    element.lastTimeWashed = lasttimewashed[i];
    element.lifetime = lifetime[i];
    result.add(element);
  }
  return result;
  // Add your function code here!
}
