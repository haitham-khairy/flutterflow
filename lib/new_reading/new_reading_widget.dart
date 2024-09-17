import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/tag_content_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/instant_timer.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'new_reading_model.dart';
export 'new_reading_model.dart';

class NewReadingWidget extends StatefulWidget {
  const NewReadingWidget({super.key});

  @override
  State<NewReadingWidget> createState() => _NewReadingWidgetState();
}

class _NewReadingWidgetState extends State<NewReadingWidget> {
  late NewReadingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewReadingModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.instantTimer2 = InstantTimer.periodic(
        duration: const Duration(milliseconds: 1000),
        callback: (timer) async {
          _model.getStatusResponse = await actions.getstatus();
          _model.rfidstatus = _model.getStatusResponse!;
          safeSetState(() {});
          if (_model.rfidstatus == 'Connected') {
            _model.rfidtagdata = await actions.readtagcount(
              false,
              _model.sliderValue!,
            );
            FFAppState().RFIDTagsList =
                _model.rfidtagdata!.toList().cast<RFIDTagsdataStruct>();
            safeSetState(() {});
            if (functions
                .isTagsListNotEmpty(FFAppState().RFIDTagsList.toList())) {
              if (_model.listsize !=
                  functions
                      .tgagsListToList(FFAppState().RFIDTagsList.toList())
                      .length) {
                _model.tagid = functions
                    .tgagsListToList(FFAppState().RFIDTagsList.toList())
                    .toList()
                    .cast<String>();
                _model.listsize = functions
                    .tgagsListToList(FFAppState().RFIDTagsList.toList())
                    .length;
                safeSetState(() {});
                _model.getTagsDataResponse = await GetTagsDataCall.call(
                  tagsListList: _model.tagid,
                );

                FFAppState().QueriedTagDataList = functions
                    .buildTagsDataList(
                        GetTagsDataCall.id(
                          (_model.getTagsDataResponse?.jsonBody ?? ''),
                        )?.toList(),
                        GetTagsDataCall.printDate(
                          (_model.getTagsDataResponse?.jsonBody ?? ''),
                        )?.toList(),
                        GetTagsDataCall.washingCount(
                          (_model.getTagsDataResponse?.jsonBody ?? ''),
                        )?.toList(),
                        GetTagsDataCall.lastTimeWashed(
                          (_model.getTagsDataResponse?.jsonBody ?? ''),
                        )?.toList(),
                        GetTagsDataCall.line(
                          (_model.getTagsDataResponse?.jsonBody ?? ''),
                        )?.toList(),
                        GetTagsDataCall.lifetime(
                          (_model.getTagsDataResponse?.jsonBody ?? ''),
                        )?.toList(),
                        GetTagsDataCall.color(
                          (_model.getTagsDataResponse?.jsonBody ?? ''),
                        )?.map((e) => e.toString()).toList().toList(),
                        GetTagsDataCall.sku(
                          (_model.getTagsDataResponse?.jsonBody ?? ''),
                        )?.toList(),
                        GetTagsDataCall.maxWashCount(
                          (_model.getTagsDataResponse?.jsonBody ?? ''),
                        )?.toList(),
                        GetTagsDataCall.washOverDue(
                          (_model.getTagsDataResponse?.jsonBody ?? ''),
                        )?.toList(),
                        GetTagsDataCall.status(
                          (_model.getTagsDataResponse?.jsonBody ?? ''),
                        )?.toList(),
                        GetTagsDataCall.daysRemaining(
                          (_model.getTagsDataResponse?.jsonBody ?? ''),
                        )?.toList(),
                        GetTagsDataCall.alarms(
                          (_model.getTagsDataResponse?.jsonBody ?? ''),
                        )?.toList(),
                        GetTagsDataCall.remainingDaysInService(
                          (_model.getTagsDataResponse?.jsonBody ?? ''),
                        )?.toList())!
                    .toList()
                    .cast<QueriedTagDataStruct>();
                safeSetState(() {});
              }
            }
          } else {
            await actions.rFIDConnectAction();
          }
        },
        startImmediately: true,
      );
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100.0),
          child: AppBar(
            backgroundColor: const Color(0xFFFD6400),
            automaticallyImplyLeading: false,
            actions: const [],
            flexibleSpace: FlexibleSpaceBar(
              title: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                3.0, 0.0, 0.0, 0.0),
                            child: FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 30.0,
                              borderWidth: 1.0,
                              buttonSize: 50.0,
                              icon: const Icon(
                                Icons.arrow_back_rounded,
                                color: Colors.white,
                                size: 30.0,
                              ),
                              onPressed: () async {
                                context.pop();
                              },
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(3.0, 10.0, 0.0, 0.0),
                        child: Text(
                          'Bins Page',
                          style: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .override(
                                fontFamily: 'Outfit',
                                color: Colors.white,
                                fontSize: 22.0,
                                letterSpacing: 0.0,
                              ),
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(29.0, 0.0, 0.0, 0.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: SvgPicture.asset(
                          'assets/images/logo-main.svg',
                          fit: BoxFit.scaleDown,
                          alignment: const Alignment(0.0, -1.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              centerTitle: true,
              expandedTitleScale: 1.0,
            ),
            elevation: 2.0,
          ),
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Opacity(
                      opacity: 0.0,
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'Filter by distance:',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: const Color(0xFF393939),
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Opacity(
                        opacity: 0.0,
                        child: Slider(
                          activeColor: const Color(0xFF0000A0),
                          inactiveColor: FlutterFlowTheme.of(context).alternate,
                          min: 0.0,
                          max: 75.0,
                          value: _model.sliderValue ??= 1.0,
                          onChanged: (newValue) {
                            safeSetState(() => _model.sliderValue = newValue);
                            EasyDebounce.debounce(
                              '_model.sliderValue',
                              const Duration(milliseconds: 1000),
                              () async {
                                _model.readTagCountResponse =
                                    await actions.readtagcount(
                                  false,
                                  _model.sliderValue!,
                                );
                                FFAppState().RFIDTagsList = _model
                                    .readTagCountResponse!
                                    .where((e) => functions.isNull(
                                            _model.sliderValue?.toString())
                                        ? true
                                        : functions.greaterOrEqual(
                                            _model.sliderValue!,
                                            e.peakRSSI.toString()))
                                    .toList()
                                    .cast<RFIDTagsdataStruct>();
                                safeSetState(() {});
                                _model.getTagsDataRsponse1 =
                                    await GetTagsDataCall.call(
                                  tagsListList: functions.tgagsListToList(
                                      FFAppState().RFIDTagsList.toList()),
                                );

                                FFAppState().QueriedTagDataList = functions
                                    .buildTagsDataList(
                                        GetTagsDataCall.id(
                                          (_model.getTagsDataRsponse1
                                                  ?.jsonBody ??
                                              ''),
                                        )?.toList(),
                                        GetTagsDataCall.printDate(
                                          (_model.getTagsDataRsponse1
                                                  ?.jsonBody ??
                                              ''),
                                        )?.toList(),
                                        GetTagsDataCall.washingCount(
                                          (_model.getTagsDataRsponse1
                                                  ?.jsonBody ??
                                              ''),
                                        )?.toList(),
                                        GetTagsDataCall.lastTimeWashed(
                                          (_model.getTagsDataRsponse1
                                                  ?.jsonBody ??
                                              ''),
                                        )?.toList(),
                                        GetTagsDataCall.line(
                                          (_model.getTagsDataRsponse1
                                                  ?.jsonBody ??
                                              ''),
                                        )?.toList(),
                                        GetTagsDataCall.lifetime(
                                          (_model.getTagsDataRsponse1
                                                  ?.jsonBody ??
                                              ''),
                                        )?.toList(),
                                        GetTagsDataCall.color(
                                          (_model.getTagsDataRsponse1
                                                  ?.jsonBody ??
                                              ''),
                                        )
                                            ?.map((e) => e.toString())
                                            .toList()
                                            .toList(),
                                        _model.sku.toList(),
                                        _model.maxwashcount.toList(),
                                        _model.washoverdue.toList(),
                                        GetTagsDataCall.status(
                                          (_model.getTagsDataResponse
                                                  ?.jsonBody ??
                                              ''),
                                        )?.toList(),
                                        GetTagsDataCall.daysRemaining(
                                          (_model.getTagsDataResponse
                                                  ?.jsonBody ??
                                              ''),
                                        )?.toList(),
                                        GetTagsDataCall.alarms(
                                          (_model.getTagsDataResponse
                                                  ?.jsonBody ??
                                              ''),
                                        )?.toList(),
                                        GetTagsDataCall.remainingDaysInService(
                                          (_model.getTagsDataResponse
                                                  ?.jsonBody ??
                                              ''),
                                        )?.toList())!
                                    .toList()
                                    .cast<QueriedTagDataStruct>();
                                safeSetState(() {});

                                safeSetState(() {});
                              },
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          FFAppState().RFIDTagsList = [];
                          FFAppState().QueriedTagDataList = [];
                          safeSetState(() {});
                          _model.listsize = 0;
                          safeSetState(() {});
                          await actions.readtagcount(
                            true,
                            _model.sliderValue!,
                          );
                        },
                        text: 'Clear list',
                        options: FFButtonOptions(
                          height: 40.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: const Color(0xFF0000A0),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
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
                  ],
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Tags list',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: const Color(0xFF393939),
                              fontSize: 24.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: 100.0,
                          height: 280.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(15.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).secondaryText,
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'TagID',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                  Text(
                                    'Status',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                  Text(
                                    'Days Remaining',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ],
                              ),
                              Expanded(
                                child: Builder(
                                  builder: (context) {
                                    final queriedTagsList = FFAppState()
                                        .QueriedTagDataList
                                        .where((e) =>
                                            e.tagID != '')
                                        .toList();

                                    return ListView.separated(
                                      padding: EdgeInsets.zero,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount: queriedTagsList.length,
                                      separatorBuilder: (_, __) =>
                                          const SizedBox(height: 2.0),
                                      itemBuilder:
                                          (context, queriedTagsListIndex) {
                                        final queriedTagsListItem =
                                            queriedTagsList[
                                                queriedTagsListIndex];
                                        return Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .accent2,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: colorFromCssString(
                                                    queriedTagsListItem.color,
                                                    defaultColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .success,
                                                  ),
                                                  offset: const Offset(
                                                    0.0,
                                                    0.0,
                                                  ),
                                                )
                                              ],
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                              ),
                                            ),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                await showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  backgroundColor: Colors.white,
                                                  barrierColor:
                                                      const Color(0xFF393939),
                                                  useSafeArea: true,
                                                  context: context,
                                                  builder: (context) {
                                                    return GestureDetector(
                                                      onTap: () =>
                                                          FocusScope.of(context)
                                                              .unfocus(),
                                                      child: Padding(
                                                        padding: MediaQuery
                                                            .viewInsetsOf(
                                                                context),
                                                        child: SizedBox(
                                                          height: 550.0,
                                                          child:
                                                              TagContentWidget(
                                                            componentlistitem:
                                                                queriedTagsListItem,
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ).then((value) =>
                                                    safeSetState(() {}));
                                              },
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Expanded(
                                                    child: Container(
                                                      width: 100.0,
                                                      height: 20.0,
                                                      decoration:
                                                          const BoxDecoration(),
                                                      child: Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Text(
                                                          queriedTagsListItem
                                                              .tagID,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Container(
                                                      width: 100.0,
                                                      height: 20.0,
                                                      decoration:
                                                          const BoxDecoration(),
                                                      child: Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                -1.0, 0.0),
                                                        child: Text(
                                                          queriedTagsListItem
                                                              .status,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Container(
                                                      width: 100.0,
                                                      height: 20.0,
                                                      decoration:
                                                          const BoxDecoration(),
                                                      child: Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                -1.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      7.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            queriedTagsListItem
                                                                .daysRemaining,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ]
                                                    .divide(
                                                        const SizedBox(width: 5.0))
                                                    .around(
                                                        const SizedBox(width: 5.0)),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                ),
                              ),
                            ].divide(const SizedBox(height: 5.0)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ].divide(const SizedBox(height: 10.0)).around(const SizedBox(height: 10.0)),
            ),
          ),
        ),
      ),
    );
  }
}
