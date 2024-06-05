import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'new_reading_widget.dart' show NewReadingWidget;
import 'package:flutter/material.dart';

class NewReadingModel extends FlutterFlowModel<NewReadingWidget> {
  ///  Local state fields for this page.

  String rfidstatus = 'na';

  List<String> tagid = [];
  void addToTagid(String item) => tagid.add(item);
  void removeFromTagid(String item) => tagid.remove(item);
  void removeAtIndexFromTagid(int index) => tagid.removeAt(index);
  void insertAtIndexInTagid(int index, String item) =>
      tagid.insert(index, item);
  void updateTagidAtIndex(int index, Function(String) updateFn) =>
      tagid[index] = updateFn(tagid[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  InstantTimer? instantTimer2;
  // Stores action output result for [Custom Action - getstatus] action in NewReading widget.
  String? getStatusResponse;
  // Stores action output result for [Custom Action - readtagcount] action in NewReading widget.
  List<RFIDTagsdataStruct>? rfidtagdata;
  // Stores action output result for [Custom Action - tagsListToList] action in NewReading widget.
  List<String>? tagslistactionresponse;
  // Stores action output result for [Backend Call - API (GetTagsData)] action in NewReading widget.
  ApiCallResponse? getTagsDataResponse;
  // State field(s) for Slider widget.
  double? sliderValue;
  // Stores action output result for [Custom Action - readtagcount] action in Button widget.
  List<RFIDTagsdataStruct>? cleartagresponse;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    instantTimer2?.cancel();
  }
}
