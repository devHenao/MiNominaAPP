import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/menu/menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'novedades_widget.dart' show NovedadesWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class NovedadesModel extends FlutterFlowModel<NovedadesWidget> {
  ///  Local state fields for this page.

  DataBookStruct? requestLibros;
  void updateRequestLibrosStruct(Function(DataBookStruct) updateFn) {
    updateFn(requestLibros ??= DataBookStruct());
  }

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (vacationEmployee)] action in Novedades widget.
  ApiCallResponse? apiResultVacation;
  // Model for menu component.
  late MenuModel menuModel;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController1;

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController2;

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController3;

  @override
  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
  }

  @override
  void dispose() {
    menuModel.dispose();
    expandableExpandableController1.dispose();
    expandableExpandableController2.dispose();
    expandableExpandableController3.dispose();
  }
}
