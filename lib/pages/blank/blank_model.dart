import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'blank_widget.dart' show BlankWidget;
import 'package:flutter/material.dart';

class BlankModel extends FlutterFlowModel<BlankWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  InstantTimer? instantTimer;
  // Stores action output result for [Custom Action - getstatus] action in blank widget.
  String? getStatusResponse;
  // Stores action output result for [Custom Action - readtagcount] action in blank widget.
  List<RFIDTagsdataStruct>? readTagcountResponse;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    instantTimer?.cancel();
  }
}
