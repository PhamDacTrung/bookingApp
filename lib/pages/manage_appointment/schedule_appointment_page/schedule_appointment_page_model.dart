import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'schedule_appointment_page_widget.dart'
    show ScheduleAppointmentPageWidget;
import 'package:flutter/material.dart';

class ScheduleAppointmentPageModel
    extends FlutterFlowModel<ScheduleAppointmentPageWidget> {
  ///  Local state fields for this page.

  CustomersRecord? customer;

  DocumentReference? customerRef;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for type widget.
  FocusNode? typeFocusNode;
  TextEditingController? typeController;
  String? Function(BuildContext, String?)? typeControllerValidator;
  String? _typeControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for content widget.
  FocusNode? contentFocusNode;
  TextEditingController? contentController;
  String? Function(BuildContext, String?)? contentControllerValidator;
  // State field(s) for customer_dropdown widget.
  String? customerDropdownValue;
  FormFieldController<String>? customerDropdownValueController;
  List<CustomersRecord>? infoCustomerCardPreviousSnapshot;
  // State field(s) for setDateTextField widget.
  FocusNode? setDateTextFieldFocusNode;
  TextEditingController? setDateTextFieldController;
  String? Function(BuildContext, String?)? setDateTextFieldControllerValidator;
  String? _setDateTextFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  DateTime? datePicked1;
  // State field(s) for startTimeTextField widget.
  FocusNode? startTimeTextFieldFocusNode;
  TextEditingController? startTimeTextFieldController;
  String? Function(BuildContext, String?)?
      startTimeTextFieldControllerValidator;
  String? _startTimeTextFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  DateTime? datePicked2;
  // State field(s) for endTimeTextField widget.
  FocusNode? endTimeTextFieldFocusNode;
  TextEditingController? endTimeTextFieldController;
  String? Function(BuildContext, String?)? endTimeTextFieldControllerValidator;
  String? _endTimeTextFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  DateTime? datePicked3;
  // Stores action output result for [Custom Action - isTimeOverlapped] action in Save_Button widget.
  bool? isTimeOverlapped;
  // Stores action output result for [Backend Call - Create Document] action in Save_Button widget.
  AppointmentsRecord? createNewAppointment;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    typeControllerValidator = _typeControllerValidator;
    setDateTextFieldControllerValidator = _setDateTextFieldControllerValidator;
    startTimeTextFieldControllerValidator =
        _startTimeTextFieldControllerValidator;
    endTimeTextFieldControllerValidator = _endTimeTextFieldControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    typeFocusNode?.dispose();
    typeController?.dispose();

    contentFocusNode?.dispose();
    contentController?.dispose();

    setDateTextFieldFocusNode?.dispose();
    setDateTextFieldController?.dispose();

    startTimeTextFieldFocusNode?.dispose();
    startTimeTextFieldController?.dispose();

    endTimeTextFieldFocusNode?.dispose();
    endTimeTextFieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
