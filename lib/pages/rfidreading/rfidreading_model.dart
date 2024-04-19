import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'rfidreading_widget.dart' show RfidreadingWidget;
import 'package:flutter/material.dart';

class RfidreadingModel extends FlutterFlowModel<RfidreadingWidget> {
  ///  Local state fields for this page.

  String rfidstatus = 'na';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  InstantTimer? instantTimer2;
  // Stores action output result for [Custom Action - getRFIDReaderStatus] action in rfidreading widget.
  String? rfidloadstatus;
  // Stores action output result for [Custom Action - readtagcount] action in rfidreading widget.
  List<RFIDTagsdataStruct>? rfidtagdata;
  // Stores action output result for [Custom Action - readtagcount] action in GetTagCountButton widget.
  List<RFIDTagsdataStruct>? clearrfidoutput;
  // Stores action output result for [Backend Call - API (Userlogin)] action in Container widget.
  ApiCallResponse? apiResult8g9;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    instantTimer2?.cancel();
  }
}