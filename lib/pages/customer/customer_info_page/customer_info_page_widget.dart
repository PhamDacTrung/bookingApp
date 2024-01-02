import '/backend/backend.dart';
import '/components/appointment_component/appointment_component_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'customer_info_page_model.dart';
export 'customer_info_page_model.dart';

class CustomerInfoPageWidget extends StatefulWidget {
  const CustomerInfoPageWidget({
    super.key,
    required this.displayName,
    required this.gender,
    required this.phoneNumber,
    required this.email,
    required this.customerId,
    required this.userAvatar,
    required this.customerRef,
  });

  final String? displayName;
  final String? gender;
  final String? phoneNumber;
  final String? email;
  final String? customerId;
  final String? userAvatar;
  final DocumentReference? customerRef;

  @override
  _CustomerInfoPageWidgetState createState() => _CustomerInfoPageWidgetState();
}

class _CustomerInfoPageWidgetState extends State<CustomerInfoPageWidget>
    with TickerProviderStateMixin {
  late CustomerInfoPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomerInfoPageModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 3,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).appbar,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Customer Information',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Readex Pro',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: MediaQuery.sizeOf(context).height * 1.0,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  FlutterFlowTheme.of(context).tertiary,
                  FlutterFlowTheme.of(context).error,
                  FlutterFlowTheme.of(context).primaryText
                ],
                stops: const [0.0, 0.5, 1.0],
                begin: const AlignmentDirectional(0.17, -1.0),
                end: const AlignmentDirectional(-0.17, 1.0),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Material(
                  color: Colors.transparent,
                  elevation: 20.0,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40.0),
                      bottomRight: Radius.circular(40.0),
                      topLeft: Radius.circular(0.0),
                      topRight: Radius.circular(0.0),
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).appbar,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(40.0),
                        bottomRight: Radius.circular(40.0),
                        topLeft: Radius.circular(0.0),
                        topRight: Radius.circular(0.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: MediaQuery.sizeOf(context).width * 0.25,
                            height: MediaQuery.sizeOf(context).width * 0.25,
                            clipBehavior: Clip.antiAlias,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.network(
                              widget.userAvatar!,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: const BoxDecoration(),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 8.0),
                                      child: Text(
                                        valueOrDefault<String>(
                                          widget.displayName,
                                          'Customer Name',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              fontSize: 20.0,
                                            ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 8.0),
                                      child: Text(
                                        valueOrDefault<String>(
                                          widget.gender,
                                          'Gender',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              fontSize: 16.0,
                                            ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 8.0),
                                      child: Text(
                                        valueOrDefault<String>(
                                          widget.phoneNumber,
                                          'Phone number',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              fontSize: 16.0,
                                            ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 8.0),
                                      child: Text(
                                        valueOrDefault<String>(
                                          widget.email,
                                          'Email@mail.com',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              fontSize: 16.0,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 10.0),
                    child: Column(
                      children: [
                        Align(
                          alignment: const Alignment(0.0, 0),
                          child: TabBar(
                            labelColor: FlutterFlowTheme.of(context).info,
                            unselectedLabelColor:
                                FlutterFlowTheme.of(context).alternate,
                            labelStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Inter',
                                  fontSize: 16.0,
                                ),
                            unselectedLabelStyle: const TextStyle(),
                            indicatorColor:
                                FlutterFlowTheme.of(context).alternate,
                            padding: const EdgeInsets.all(8.0),
                            tabs: const [
                              Tab(
                                text: 'Upcoming',
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    8.0, 8.0, 8.0, 10.0),
                                child: Tab(
                                  text: 'History',
                                ),
                              ),
                              Tab(
                                text: 'Feedback',
                              ),
                            ],
                            controller: _model.tabBarController,
                          ),
                        ),
                        Expanded(
                          child: TabBarView(
                            controller: _model.tabBarController,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 16.0, 0.0, 0.0),
                                child: StreamBuilder<List<AppointmentsRecord>>(
                                  stream: queryAppointmentsRecord(
                                    queryBuilder: (appointmentsRecord) =>
                                        appointmentsRecord
                                            .where(
                                              'customer',
                                              isEqualTo: widget.customerRef,
                                            )
                                            .where(
                                              'date',
                                              isGreaterThanOrEqualTo:
                                                  functions.today(),
                                            )
                                            .orderBy('date'),
                                  ),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: LinearProgressIndicator(
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                        ),
                                      );
                                    }
                                    List<AppointmentsRecord>
                                        columnAppointmentsRecordList =
                                        snapshot.data!;
                                    return SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: List.generate(
                                            columnAppointmentsRecordList.length,
                                            (columnIndex) {
                                          final columnAppointmentsRecord =
                                              columnAppointmentsRecordList[
                                                  columnIndex];
                                          return wrapWithModel(
                                            model: _model
                                                .appointmentComponentModels1
                                                .getModel(
                                              columnAppointmentsRecord
                                                  .reference.id,
                                              columnIndex,
                                            ),
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: AppointmentComponentWidget(
                                              key: Key(
                                                'Keykwo_${columnAppointmentsRecord.reference.id}',
                                              ),
                                              appointmentRef:
                                                  columnAppointmentsRecord
                                                      .reference,
                                              disableEdit: false,
                                            ),
                                          );
                                        }),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 16.0, 0.0, 0.0),
                                child: StreamBuilder<List<AppointmentsRecord>>(
                                  stream: queryAppointmentsRecord(
                                    queryBuilder: (appointmentsRecord) =>
                                        appointmentsRecord
                                            .where(
                                              'customer',
                                              isEqualTo: widget.customerRef,
                                            )
                                            .where(
                                              'date',
                                              isLessThan: functions.today(),
                                            )
                                            .orderBy('date'),
                                  ),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: LinearProgressIndicator(
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                        ),
                                      );
                                    }
                                    List<AppointmentsRecord>
                                        columnAppointmentsRecordList =
                                        snapshot.data!;
                                    return SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: List.generate(
                                            columnAppointmentsRecordList.length,
                                            (columnIndex) {
                                          final columnAppointmentsRecord =
                                              columnAppointmentsRecordList[
                                                  columnIndex];
                                          return wrapWithModel(
                                            model: _model
                                                .appointmentComponentModels2
                                                .getModel(
                                              columnAppointmentsRecord
                                                  .reference.id,
                                              columnIndex,
                                            ),
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: AppointmentComponentWidget(
                                              key: Key(
                                                'Key7iv_${columnAppointmentsRecord.reference.id}',
                                              ),
                                              appointmentRef:
                                                  columnAppointmentsRecord
                                                      .reference,
                                              disableEdit: true,
                                            ),
                                          );
                                        }),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 16.0, 0.0, 0.0),
                                child: StreamBuilder<List<FeedbacksRecord>>(
                                  stream: queryFeedbacksRecord(
                                    queryBuilder: (feedbacksRecord) =>
                                        feedbacksRecord.where(
                                      'customer',
                                      isEqualTo: widget.customerRef,
                                    ),
                                  ),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: LinearProgressIndicator(
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                        ),
                                      );
                                    }
                                    List<FeedbacksRecord>
                                        columnFeedbacksRecordList =
                                        snapshot.data!;
                                    return SingleChildScrollView(
                                      primary: false,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: List.generate(
                                            columnFeedbacksRecordList.length,
                                            (columnIndex) {
                                          final columnFeedbacksRecord =
                                              columnFeedbacksRecordList[
                                                  columnIndex];
                                          return Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 4.0),
                                            child: Card(
                                              clipBehavior:
                                                  Clip.antiAliasWithSaveLayer,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              elevation: 4.0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.all(12.0),
                                                child: Container(
                                                  decoration: const BoxDecoration(),
                                                  child: Container(
                                                    color: Colors.white,
                                                    child: ExpandableNotifier(
                                                      child: ExpandablePanel(
                                                        header: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              columnFeedbacksRecord
                                                                  .title,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .displaySmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        20.0,
                                                                  ),
                                                            ),
                                                            Container(
                                                              decoration:
                                                                  const BoxDecoration(),
                                                              child:
                                                                  RatingBarIndicator(
                                                                itemBuilder:
                                                                    (context,
                                                                            index) =>
                                                                        Icon(
                                                                  Icons
                                                                      .star_rounded,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .tertiary,
                                                                ),
                                                                direction: Axis
                                                                    .horizontal,
                                                                rating: columnFeedbacksRecord
                                                                    .numberRating
                                                                    .toDouble(),
                                                                unratedColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .accent3,
                                                                itemCount: 5,
                                                                itemSize: 20.0,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        collapsed: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        8.0,
                                                                        0.0,
                                                                        8.0),
                                                            child: Text(
                                                              columnFeedbacksRecord
                                                                  .content
                                                                  .maybeHandleOverflow(
                                                                maxChars: 170,
                                                                replacement:
                                                                    '…',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Inter',
                                                                    color: const Color(
                                                                        0x8A000000),
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                        expanded: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              columnFeedbacksRecord
                                                                  .content,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Inter',
                                                                    color: const Color(
                                                                        0x8A000000),
                                                                  ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          4.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                child: Image
                                                                    .network(
                                                                  'https://picsum.photos/seed/179/600',
                                                                  width: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      1.0,
                                                                  height: 200.0,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        theme:
                                                            const ExpandableThemeData(
                                                          tapHeaderToExpand:
                                                              true,
                                                          tapBodyToExpand:
                                                              false,
                                                          tapBodyToCollapse:
                                                              false,
                                                          headerAlignment:
                                                              ExpandablePanelHeaderAlignment
                                                                  .center,
                                                          hasIcon: true,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          );
                                        }),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
