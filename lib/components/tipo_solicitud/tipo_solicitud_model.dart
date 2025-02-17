import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'tipo_solicitud_widget.dart' show TipoSolicitudWidget;
import 'package:flutter/material.dart';

class TipoSolicitudModel extends FlutterFlowModel<TipoSolicitudWidget> {
  ///  Local state fields for this component.

  TypeRequestStruct? tipoSolicitud;
  void updateTipoSolicitudStruct(Function(TypeRequestStruct) updateFn) {
    updateFn(tipoSolicitud ??= TypeRequestStruct());
  }

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (getListTypesRequests)] action in tipoSolicitud widget.
  ApiCallResponse? apiResultTipoSolucitud;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
