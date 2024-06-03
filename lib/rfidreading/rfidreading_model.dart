import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/instant_timer.dart';
import 'rfidreading_widget.dart' show RfidreadingWidget;
import 'package:flutter/material.dart';

class RfidreadingModel extends FlutterFlowModel<RfidreadingWidget> {
  ///  Local state fields for this page.

  String rfidstatus = 'na';

  List<dynamic> tagsid = [];
  void addToTagsid(dynamic item) => tagsid.add(item);
  void removeFromTagsid(dynamic item) => tagsid.remove(item);
  void removeAtIndexFromTagsid(int index) => tagsid.removeAt(index);
  void insertAtIndexInTagsid(int index, dynamic item) =>
      tagsid.insert(index, item);
  void updateTagsidAtIndex(int index, Function(dynamic) updateFn) =>
      tagsid[index] = updateFn(tagsid[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  InstantTimer? instantTimer2;
  // Stores action output result for [Custom Action - getstatus] action in rfidreading widget.
  String? getStatusResponse;
  // Stores action output result for [Custom Action - readtagcount] action in rfidreading widget.
  List<RFIDTagsdataStruct>? rfidtagdata;
  // Stores action output result for [Backend Call - API (querytaglist)] action in rfidreading widget.
  ApiCallResponse? querytaglistapiresponse;
  // Stores action output result for [Backend Call - API (GetTagsData)] action in rfidreading widget.
  ApiCallResponse? apiResultnj9;
  // Stores action output result for [Custom Action - readtagcount] action in GetTagCountButton widget.
  List<RFIDTagsdataStruct>? clearrfidoutput;
  // State field(s) for Slider widget.
  double? sliderValue;
  // Stores action output result for [Backend Call - API (QueryTagData)] action in Container widget.
  ApiCallResponse? tagdata;
  // State field(s) for linedropmenu widget.
  String? linedropmenuValue;
  FormFieldController<String>? linedropmenuValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    instantTimer2?.cancel();
  }
}
