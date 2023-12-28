import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'appointment_component_model.dart';
export 'appointment_component_model.dart';

class AppointmentComponentWidget extends StatefulWidget {
  const AppointmentComponentWidget({
    super.key,
    required this.appointmentRef,
    bool? disableEdit,
  })  : disableEdit = disableEdit ?? false;

  final DocumentReference? appointmentRef;
  final bool disableEdit;

  @override
  _AppointmentComponentWidgetState createState() =>
      _AppointmentComponentWidgetState();
}

class _AppointmentComponentWidgetState
    extends State<AppointmentComponentWidget> {
  late AppointmentComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AppointmentComponentModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 12.0),
      child: StreamBuilder<AppointmentsRecord>(
        stream: AppointmentsRecord.getDocument(widget.appointmentRef!),
        builder: (context, snapshot) {
          // Customize what your widget looks like when it's loading.
          if (!snapshot.hasData) {
            return Center(
              child: LinearProgressIndicator(
                color: FlutterFlowTheme.of(context).info,
              ),
            );
          }
          final containerAppointmentsRecord = snapshot.data!;
          return Container(
            width: MediaQuery.sizeOf(context).width * 0.9,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              boxShadow: const [
                BoxShadow(
                  blurRadius: 3.0,
                  color: Color(0x33000000),
                  offset: Offset(0.0, 1.0),
                )
              ],
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(12.0, 8.0, 12.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          containerAppointmentsRecord.type.maybeHandleOverflow(
                            maxChars: 25,
                            replacement: '…',
                          ),
                          maxLines: 1,
                          style: FlutterFlowTheme.of(context).headlineSmall,
                        ),
                      ),
                      FlutterFlowIconButton(
                        borderRadius: 20.0,
                        borderWidth: 1.0,
                        buttonSize: 40.0,
                        icon: Icon(
                          Icons.navigate_next_rounded,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 24.0,
                        ),
                        onPressed: () async {
                          context.pushNamed(
                            'AppoitmentDetail',
                            queryParameters: {
                              'appointmentType': serializeParam(
                                containerAppointmentsRecord.type,
                                ParamType.String,
                              ),
                              'content': serializeParam(
                                containerAppointmentsRecord.content,
                                ParamType.String,
                              ),
                              'customerRef': serializeParam(
                                containerAppointmentsRecord.customer,
                                ParamType.DocumentReference,
                              ),
                              'date': serializeParam(
                                containerAppointmentsRecord.date,
                                ParamType.DateTime,
                              ),
                              'startTime': serializeParam(
                                containerAppointmentsRecord.startTime,
                                ParamType.DateTime,
                              ),
                              'endTime': serializeParam(
                                containerAppointmentsRecord.endTime,
                                ParamType.DateTime,
                              ),
                              'appointmentRef': serializeParam(
                                containerAppointmentsRecord.reference,
                                ParamType.DocumentReference,
                              ),
                              'disableEdit': serializeParam(
                                widget.disableEdit,
                                ParamType.bool,
                              ),
                            }.withoutNulls,
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 8.0, 4.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(4.0, 8.0, 0.0, 0.0),
                        child: Text(
                          dateTimeFormat('EEE, MMM dd, yyyy',
                              containerAppointmentsRecord.date!),
                          maxLines: 3,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    color: FlutterFlowTheme.of(context).primary,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 8.0, 8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'From',
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                        child: Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          color: FlutterFlowTheme.of(context).accent3,
                          elevation: 0.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                8.0, 4.0, 8.0, 4.0),
                            child: Text(
                              dateTimeFormat('hh:mm aaa',
                                  containerAppointmentsRecord.startTime!),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    color:
                                        FlutterFlowTheme.of(context).tertiary,
                                  ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                        child: Text(
                          'to',
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                        child: Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          color: FlutterFlowTheme.of(context).accent3,
                          elevation: 0.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                8.0, 4.0, 8.0, 4.0),
                            child: Text(
                              dateTimeFormat('hh:mm aaa',
                                  containerAppointmentsRecord.endTime!),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    color:
                                        FlutterFlowTheme.of(context).tertiary,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
