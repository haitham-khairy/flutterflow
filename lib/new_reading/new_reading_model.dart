import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'new_reading_widget.dart' show NewReadingWidget;
import 'package:flutter/material.dart';

class NewReadingModel extends FlutterFlowModel<NewReadingWidget> {
  ///  Local state fields for this page.

  List<QueriedTagDataStruct> queriedtagdatalist = [];
  void addToQueriedtagdatalist(QueriedTagDataStruct item) =>
      queriedtagdatalist.add(item);
  void removeFromQueriedtagdatalist(QueriedTagDataStruct item) =>
      queriedtagdatalist.remove(item);
  void removeAtIndexFromQueriedtagdatalist(int index) =>
      queriedtagdatalist.removeAt(index);
  void insertAtIndexInQueriedtagdatalist(
          int index, QueriedTagDataStruct item) =>
      queriedtagdatalist.insert(index, item);
  void updateQueriedtagdatalistAtIndex(
          int index, Function(QueriedTagDataStruct) updateFn) =>
      queriedtagdatalist[index] = updateFn(queriedtagdatalist[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Slider widget.
  double? sliderValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
