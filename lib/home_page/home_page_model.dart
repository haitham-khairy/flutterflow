import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (GetFilterParamaters)] action in HomePage widget.
  ApiCallResponse? getFilterParametersHome;
  // Stores action output result for [Backend Call - API (GetAlarmsTypes)] action in HomePage widget.
  ApiCallResponse? getAlarmsTypesResponse;
  // Stores action output result for [Backend Call - API (GetStatusTypes)] action in HomePage widget.
  ApiCallResponse? getStatusTypesResponse;
  InstantTimer? instantTimer;
  // Stores action output result for [Backend Call - API (GetAlarmsSummary)] action in HomePage widget.
  ApiCallResponse? alarmsSummaryResponse;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    instantTimer?.cancel();
  }
}
