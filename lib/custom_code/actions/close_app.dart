// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future closeApp() async {
  // Add your function code here!
  // Add a small delay to ensure cleanup is complete
  await Future.delayed(const Duration(milliseconds: 500));
  try {
    // Force kill the app process
    SystemChannels.platform.invokeMethod('SystemNavigator.pop');
  } catch (e) {
    print('Error during cleanup and exit: $e');
    // Attempt force exit even if cleanup fails
  }
}
