import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'detail_nomina_widget.dart' show DetailNominaWidget;
import 'package:flutter/material.dart';

class DetailNominaModel extends FlutterFlowModel<DetailNominaWidget> {
  ///  Local state fields for this component.

  List<DetailNominaStruct> detailNomina = [];
  void addToDetailNomina(DetailNominaStruct item) => detailNomina.add(item);
  void removeFromDetailNomina(DetailNominaStruct item) =>
      detailNomina.remove(item);
  void removeAtIndexFromDetailNomina(int index) => detailNomina.removeAt(index);
  void insertAtIndexInDetailNomina(int index, DetailNominaStruct item) =>
      detailNomina.insert(index, item);
  void updateDetailNominaAtIndex(
          int index, Function(DetailNominaStruct) updateFn) =>
      detailNomina[index] = updateFn(detailNomina[index]);

  double? total;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (getDetailEmployeePayroll)] action in DetailNomina widget.
  ApiCallResponse? apiResultDetail;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
