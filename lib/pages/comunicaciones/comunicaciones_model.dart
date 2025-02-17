import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/menu/menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'comunicaciones_widget.dart' show ComunicacionesWidget;
import 'package:flutter/material.dart';

class ComunicacionesModel extends FlutterFlowModel<ComunicacionesWidget> {
  ///  Local state fields for this page.

  ComunicationsStruct? comunicados;
  void updateComunicadosStruct(Function(ComunicationsStruct) updateFn) {
    updateFn(comunicados ??= ComunicationsStruct());
  }

  bool hasActules = true;

  bool hasCerrados = true;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Communication)] action in Comunicaciones widget.
  ApiCallResponse? apiResultCommunication;
  // Model for menu component.
  late MenuModel menuModel;
  // State field(s) for tbrComunicados widget.
  TabController? tbrComunicadosController;
  int get tbrComunicadosCurrentIndex =>
      tbrComunicadosController != null ? tbrComunicadosController!.index : 0;

  @override
  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
  }

  @override
  void dispose() {
    menuModel.dispose();
    tbrComunicadosController?.dispose();
  }
}
