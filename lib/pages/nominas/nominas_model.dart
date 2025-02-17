import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/menu/menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'nominas_widget.dart' show NominasWidget;
import 'package:flutter/material.dart';

class NominasModel extends FlutterFlowModel<NominasWidget> {
  ///  Local state fields for this page.

  List<DateNominaStruct> listNomina = [];
  void addToListNomina(DateNominaStruct item) => listNomina.add(item);
  void removeFromListNomina(DateNominaStruct item) => listNomina.remove(item);
  void removeAtIndexFromListNomina(int index) => listNomina.removeAt(index);
  void insertAtIndexInListNomina(int index, DateNominaStruct item) =>
      listNomina.insert(index, item);
  void updateListNominaAtIndex(
          int index, Function(DateNominaStruct) updateFn) =>
      listNomina[index] = updateFn(listNomina[index]);

  bool hasNomina = true;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (getListEmployeePayroll)] action in Nominas widget.
  ApiCallResponse? apiResultListNomina;
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
