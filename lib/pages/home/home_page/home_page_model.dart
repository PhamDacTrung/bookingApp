import '/components/customer_home_page/customer_home_page_widget.dart';
import '/components/trainer_home_page/trainer_home_page_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  DateTime? appointmentDate;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for TrainerHomePage component.
  late TrainerHomePageModel trainerHomePageModel;
  // Model for CustomerHomePage component.
  late CustomerHomePageModel customerHomePageModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    trainerHomePageModel = createModel(context, () => TrainerHomePageModel());
    customerHomePageModel = createModel(context, () => CustomerHomePageModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    trainerHomePageModel.dispose();
    customerHomePageModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
