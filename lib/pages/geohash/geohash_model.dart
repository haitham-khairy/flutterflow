import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'geohash_widget.dart' show GeohashWidget;
import 'package:flutter/material.dart';

class GeohashModel extends FlutterFlowModel<GeohashWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Custom Action - rFIDconnectionvalue] action in ConnectButton widget.
  String? rfidstatus;
  // Stores action output result for [Custom Action - readtagcount] action in GetTagCountButton widget.
  List<RFIDTagsdataStruct>? rfidtagdata;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
