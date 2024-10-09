import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'tag_content_model.dart';
export 'tag_content_model.dart';

class TagContentWidget extends StatefulWidget {
  const TagContentWidget({
    super.key,
    this.componentlistitem,
  });

  final QueriedTagDataStruct? componentlistitem;

  @override
  State<TagContentWidget> createState() => _TagContentWidgetState();
}

class _TagContentWidgetState extends State<TagContentWidget> {
  late TagContentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TagContentModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircularPercentIndicator(
                percent: functions.progressBarCalculator(
                    widget.componentlistitem!.remainingDaysInServeic,
                    widget.componentlistitem!.lifetime),
                radius: 50.0,
                lineWidth: 12.0,
                animation: true,
                animateFromLastPercent: true,
                progressColor: const Color(0xFF0000A0),
                backgroundColor: FlutterFlowTheme.of(context).accent4,
                center: Text(
                  'Life\nTime',
                  style: FlutterFlowTheme.of(context).headlineSmall.override(
                        fontFamily: 'Outfit',
                        fontSize: 18.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.normal,
                      ),
                ),
              ),
              CircularPercentIndicator(
                percent: functions.progressBarCalculator2(
                    widget.componentlistitem!.washingCount,
                    widget.componentlistitem!.maxWashCount),
                radius: 50.0,
                lineWidth: 12.0,
                animation: true,
                animateFromLastPercent: true,
                progressColor: const Color(0xFF0000A0),
                backgroundColor: FlutterFlowTheme.of(context).accent4,
                center: Text(
                  'Washing\nCount',
                  style: FlutterFlowTheme.of(context).headlineSmall.override(
                        fontFamily: 'Outfit',
                        fontSize: 18.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.normal,
                      ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                decoration: const BoxDecoration(),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'ID:',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Text(
                          valueOrDefault<String>(
                            widget.componentlistitem?.tagID,
                            '--',
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                thickness: 2.0,
                color: FlutterFlowTheme.of(context).alternate,
              ),
              Container(
                decoration: const BoxDecoration(),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Line: ',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                      ),
                      Text(
                        valueOrDefault<String>(
                          widget.componentlistitem?.line,
                          '--',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                thickness: 2.0,
                color: FlutterFlowTheme.of(context).alternate,
              ),
              Container(
                decoration: const BoxDecoration(),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'SKU:',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                      ),
                      Text(
                        valueOrDefault<String>(
                          widget.componentlistitem?.sku,
                          '--',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                thickness: 2.0,
                color: FlutterFlowTheme.of(context).alternate,
              ),
              Container(
                decoration: const BoxDecoration(),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Last time washed:',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                      ),
                      Text(
                        valueOrDefault<String>(
                          widget.componentlistitem?.lastTimeWashed,
                          'NA',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                thickness: 2.0,
                color: FlutterFlowTheme.of(context).alternate,
              ),
              Container(
                decoration: const BoxDecoration(),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Days Remaining For Next Wash:',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                      ),
                      Text(
                        valueOrDefault<String>(
                          widget.componentlistitem?.daysRemaining,
                          '--',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                thickness: 2.0,
                color: FlutterFlowTheme.of(context).alternate,
              ),
              Container(
                decoration: const BoxDecoration(),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Color:',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                      ),
                      Text(
                        valueOrDefault<String>(
                          widget.componentlistitem?.color,
                          'NA',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                thickness: 2.0,
                color: FlutterFlowTheme.of(context).alternate,
              ),
              Container(
                decoration: const BoxDecoration(),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Status:',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                      ),
                      Text(
                        valueOrDefault<String>(
                          widget.componentlistitem?.status,
                          '--',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                thickness: 2.0,
                color: FlutterFlowTheme.of(context).alternate,
              ),
              Container(
                decoration: const BoxDecoration(),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Remaining dayes in service:',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                      ),
                      Text(
                        valueOrDefault<String>(
                          widget.componentlistitem?.remainingDaysInServeic,
                          '--',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                thickness: 2.0,
                color: FlutterFlowTheme.of(context).alternate,
              ),
              Container(
                decoration: const BoxDecoration(),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 5.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Reworkbin Status:',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                      ),
                      Text(
                        valueOrDefault<String>(
                          widget.componentlistitem?.alarms,
                          '--',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    _model.rejectionResponse =
                        await RejectPinRequestCall.call();

                    if ((_model.rejectionResponse?.succeeded ?? true)) {
                      await showDialog(
                        context: context,
                        builder: (alertDialogContext) {
                          return AlertDialog(
                            title: const Text('Result'),
                            content: Text(RejectPinRequestCall.response(
                              (_model.rejectionResponse?.jsonBody ?? ''),
                            )!),
                            actions: [
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(alertDialogContext),
                                child: const Text('Ok'),
                              ),
                            ],
                          );
                        },
                      );
                    } else {
                      await showDialog(
                        context: context,
                        builder: (alertDialogContext) {
                          return AlertDialog(
                            title: const Text('Result'),
                            content: Text(RejectPinRequestCall.response(
                              (_model.rejectionResponse?.jsonBody ?? ''),
                            )!),
                            actions: [
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(alertDialogContext),
                                child: const Text('Ok'),
                              ),
                            ],
                          );
                        },
                      );
                    }

                    safeSetState(() {});
                  },
                  text: 'Change to reject',
                  options: FFButtonOptions(
                    height: 40.0,
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: const Color(0xFFFD6400),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Readex Pro',
                          color: Colors.white,
                          letterSpacing: 0.0,
                        ),
                    elevation: 3.0,
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ].divide(const SizedBox(height: 2.0)).around(const SizedBox(height: 2.0)),
          ),
        ),
      ],
    );
  }
}
