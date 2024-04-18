import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'geohash_widget.dart' show GeohashWidget;
import 'package:flutter/material.dart';

class GeohashModel extends FlutterFlowModel<GeohashWidget> {
  ///  Local state fields for this page.

  String rfidstatus = 'na';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Custom Action - getRFIDReaderStatus] action in geohash widget.
  String? rfidstatusOnpageload;
  InstantTimer? instantTimer;
  // Stores action output result for [Custom Action - getRFIDReaderStatus] action in ConnectButton widget.
  String? rfidreaderstatusconnect;
  InstantTimer? instantTimer2;
  // Stores action output result for [Custom Action - readtagcount] action in GetTagCountButton widget.
  List<RFIDTagsdataStruct>? rfidtagdata;
  // Stores action output result for [Backend Call - API (Userlogin)] action in Container widget.
  ApiCallResponse? apiResult8g9;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    instantTimer?.cancel();
    instantTimer2?.cancel();
  }
}
