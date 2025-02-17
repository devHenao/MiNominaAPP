import '/components/menu/menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'certificados_widget.dart' show CertificadosWidget;
import 'package:flutter/material.dart';

class CertificadosModel extends FlutterFlowModel<CertificadosWidget> {
  ///  State fields for stateful widgets in this page.

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
