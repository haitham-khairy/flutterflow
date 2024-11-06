import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'alarms_widget.dart' show AlarmsWidget;
import 'package:flutter/material.dart';

class AlarmsModel extends FlutterFlowModel<AlarmsWidget> {
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
  // State field(s) for SelectID widget.
  FocusNode? selectIDFocusNode;
  TextEditingController? selectIDTextController;
  String? Function(BuildContext, String?)? selectIDTextControllerValidator;
  // State field(s) for SelectStatus widget.
  String? selectStatusValue;
  FormFieldController<String>? selectStatusValueController;
  // Stores action output result for [Backend Call - API (GetAlarmsList)] action in Button widget.
  ApiCallResponse? getAlarmsListResponse;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<AlarmTypeStruct>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    selectIDFocusNode?.dispose();
    selectIDTextController?.dispose();

    paginatedDataTableController.dispose();
  }
}
