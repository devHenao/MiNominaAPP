import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cursos_widget.dart' show CursosWidget;
import 'package:flutter/material.dart';

class CursosModel extends FlutterFlowModel<CursosWidget> {
  ///  Local state fields for this component.

  ListTrainingEmployeeStruct? dCursos;
  void updateDCursosStruct(Function(ListTrainingEmployeeStruct) updateFn) {
    updateFn(dCursos ??= ListTrainingEmployeeStruct());
  }

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (getListTrainingEmployee)] action in Cursos widget.
  ApiCallResponse? apiResultCursos;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
