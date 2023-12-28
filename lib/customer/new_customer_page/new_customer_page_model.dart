import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'new_customer_page_widget.dart' show NewCustomerPageWidget;
import 'package:flutter/material.dart';

class NewCustomerPageModel extends FlutterFlowModel<NewCustomerPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for Displayname widget.
  FocusNode? displaynameFocusNode;
  TextEditingController? displaynameController;
  String? Function(BuildContext, String?)? displaynameControllerValidator;
  String? _displaynameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return 'Must start with a letter and can only contain letters, digits and - or _.';
    }
    return null;
  }

  // State field(s) for PhoneNumber widget.
  FocusNode? phoneNumberFocusNode;
  TextEditingController? phoneNumberController;
  String? Function(BuildContext, String?)? phoneNumberControllerValidator;
  String? _phoneNumberControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for gender widget.
  String? genderValue;
  FormFieldController<String>? genderValueController;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;
  String? _emailAddressControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // Stores action output result for [Backend Call - Create Document] action in createButton widget.
  CustomersRecord? createNewCustomer;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    displaynameControllerValidator = _displaynameControllerValidator;
    phoneNumberControllerValidator = _phoneNumberControllerValidator;
    emailAddressControllerValidator = _emailAddressControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    displaynameFocusNode?.dispose();
    displaynameController?.dispose();

    phoneNumberFocusNode?.dispose();
    phoneNumberController?.dispose();

    emailAddressFocusNode?.dispose();
    emailAddressController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
