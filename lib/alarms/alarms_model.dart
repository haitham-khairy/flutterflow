import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/instant_timer.dart';
import 'alarms_widget.dart' show AlarmsWidget;
import 'package:flutter/material.dart';

class AlarmsModel extends FlutterFlowModel<AlarmsWidget> {
  ///  Local state fields for this page.

  List<String> tagid = [];
  void addToTagid(String item) => tagid.add(item);
  void removeFromTagid(String item) => tagid.remove(item);
  void removeAtIndexFromTagid(int index) => tagid.removeAt(index);
  void insertAtIndexInTagid(int index, String item) =>
      tagid.insert(index, item);
  void updateTagidAtIndex(int index, Function(String) updateFn) =>
      tagid[index] = updateFn(tagid[index]);

  List<String> line = [];
  void addToLine(String item) => line.add(item);
  void removeFromLine(String item) => line.remove(item);
  void removeAtIndexFromLine(int index) => line.removeAt(index);
  void insertAtIndexInLine(int index, String item) => line.insert(index, item);
  void updateLineAtIndex(int index, Function(String) updateFn) =>
      line[index] = updateFn(line[index]);

  List<String> sku = [];
  void addToSku(String item) => sku.add(item);
  void removeFromSku(String item) => sku.remove(item);
  void removeAtIndexFromSku(int index) => sku.removeAt(index);
  void insertAtIndexInSku(int index, String item) => sku.insert(index, item);
  void updateSkuAtIndex(int index, Function(String) updateFn) =>
      sku[index] = updateFn(sku[index]);

  List<String> alarm = [];
  void addToAlarm(String item) => alarm.add(item);
  void removeFromAlarm(String item) => alarm.remove(item);
  void removeAtIndexFromAlarm(int index) => alarm.removeAt(index);
  void insertAtIndexInAlarm(int index, String item) =>
      alarm.insert(index, item);
  void updateAlarmAtIndex(int index, Function(String) updateFn) =>
      alarm[index] = updateFn(alarm[index]);

  String linefilter = ' ';

  String skufilter = ' ';

  String statusfilter = ' ';

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (GetFilterParamaters)] action in Alarms widget.
  ApiCallResponse? filterParametersResponse;
  InstantTimer? instantTimer;
  // Stores action output result for [Backend Call - API (GetAlarmsList)] action in Alarms widget.
  ApiCallResponse? getAlarmsListResponse;
  // State field(s) for SelectLine widget.
  String? selectLineValue;
  FormFieldController<String>? selectLineValueController;
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
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<AlarmTypeStruct>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    instantTimer?.cancel();
    selectIDFocusNode?.dispose();
    selectIDTextController?.dispose();

    paginatedDataTableController.dispose();
  }
}
