import '/flutter_flow/flutter_flow_util.dart';
import 'geohash_widget.dart' show GeohashWidget;
import 'package:flutter/material.dart';

class GeohashModel extends FlutterFlowModel<GeohashWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Custom Action - rFIDconnectionvalue] action in Button widget.
  int? status;
  // Stores action output result for [Custom Action - readtagcount] action in Button widget.
  int? tagcount;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
