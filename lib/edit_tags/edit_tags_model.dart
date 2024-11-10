import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_tags_widget.dart' show EditTagsWidget;
import 'package:flutter/material.dart';

class EditTagsModel extends FlutterFlowModel<EditTagsWidget> {
  ///  Local state fields for this page.

  String tagid = '';

  String line = ' ';

  String sku = ' ';

  String alarm = ' ';

  ///  State fields for stateful widgets in this page.

  // State field(s) for SelectLine widget.
  String? selectLineValue;
  FormFieldController<String>? selectLineValueController;
  // Stores action output result for [Backend Call - API (GetSKUsFilter)] action in SelectLine widget.
  ApiCallResponse? getSKUsFilterResponse;
  // State field(s) for SelectSKU widget.
  String? selectSKUValue;
  FormFieldController<String>? selectSKUValueController;
  // State field(s) for From widget.
  FocusNode? fromFocusNode;
  TextEditingController? fromTextController;
  String? Function(BuildContext, String?)? fromTextControllerValidator;
  // State field(s) for To widget.
  FocusNode? toFocusNode;
  TextEditingController? toTextController;
  String? Function(BuildContext, String?)? toTextControllerValidator;
  // Stores action output result for [Backend Call - API (BinsDataUpdater)] action in Button widget.
  ApiCallResponse? updateBinData;
  // Stores action output result for [Backend Call - API (BinsDataUpdater)] action in Button widget.
  ApiCallResponse? updateBinData2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    fromFocusNode?.dispose();
    fromTextController?.dispose();

    toFocusNode?.dispose();
    toTextController?.dispose();

    textFieldFocusNode?.dispose();
    textController3?.dispose();
  }
}
