import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'update_life_time_widget.dart' show UpdateLifeTimeWidget;
import 'package:flutter/material.dart';

class UpdateLifeTimeModel extends FlutterFlowModel<UpdateLifeTimeWidget> {
  ///  Local state fields for this component.

  int days = 0;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (UpdateLifeTime)] action in Button widget.
  ApiCallResponse? apiResulterh;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
