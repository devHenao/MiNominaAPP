import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/menu/menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'capacitaciones_widget.dart' show CapacitacionesWidget;
import 'package:flutter/material.dart';

class CapacitacionesModel extends FlutterFlowModel<CapacitacionesWidget> {
  ///  Local state fields for this page.

  List<ListTrainingEmployeeStruct> trainingEmployee = [];
  void addToTrainingEmployee(ListTrainingEmployeeStruct item) =>
      trainingEmployee.add(item);
  void removeFromTrainingEmployee(ListTrainingEmployeeStruct item) =>
      trainingEmployee.remove(item);
  void removeAtIndexFromTrainingEmployee(int index) =>
      trainingEmployee.removeAt(index);
  void insertAtIndexInTrainingEmployee(
          int index, ListTrainingEmployeeStruct item) =>
      trainingEmployee.insert(index, item);
  void updateTrainingEmployeeAtIndex(
          int index, Function(ListTrainingEmployeeStruct) updateFn) =>
      trainingEmployee[index] = updateFn(trainingEmployee[index]);

  bool hasNoti = true;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (getListTrainingEmployee)] action in Capacitaciones widget.
  ApiCallResponse? apiResultCapacitaciones;
  // Model for menu component.
  late MenuModel menuModel;

  @override
  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
  }

  @override
  void dispose() {
    menuModel.dispose();
  }
}
