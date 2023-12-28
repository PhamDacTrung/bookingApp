import '/components/appointment_component/appointment_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'customer_info_page_widget.dart' show CustomerInfoPageWidget;
import 'package:flutter/material.dart';

class CustomerInfoPageModel extends FlutterFlowModel<CustomerInfoPageWidget> {
  ///  Local state fields for this page.

  DocumentReference? customerRef;

  int? numberRating;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Models for appointmentComponent dynamic component.
  late FlutterFlowDynamicModels<AppointmentComponentModel>
      appointmentComponentModels1;
  // Models for appointmentComponent dynamic component.
  late FlutterFlowDynamicModels<AppointmentComponentModel>
      appointmentComponentModels2;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    appointmentComponentModels1 =
        FlutterFlowDynamicModels(() => AppointmentComponentModel());
    appointmentComponentModels2 =
        FlutterFlowDynamicModels(() => AppointmentComponentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    appointmentComponentModels1.dispose();
    appointmentComponentModels2.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
