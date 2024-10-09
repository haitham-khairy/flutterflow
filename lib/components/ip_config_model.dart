import '/flutter_flow/flutter_flow_util.dart';
import 'ip_config_widget.dart' show IpConfigWidget;
import 'package:flutter/material.dart';

class IpConfigModel extends FlutterFlowModel<IpConfigWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
