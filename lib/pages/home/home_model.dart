import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/menu/menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  Local state fields for this page.

  List<RequestStruct> listRequest = [];
  void addToListRequest(RequestStruct item) => listRequest.add(item);
  void removeFromListRequest(RequestStruct item) => listRequest.remove(item);
  void removeAtIndexFromListRequest(int index) => listRequest.removeAt(index);
  void insertAtIndexInListRequest(int index, RequestStruct item) =>
      listRequest.insert(index, item);
  void updateListRequestAtIndex(int index, Function(RequestStruct) updateFn) =>
      listRequest[index] = updateFn(listRequest[index]);

  ComunicationsStruct? notificaciones;
  void updateNotificacionesStruct(Function(ComunicationsStruct) updateFn) {
    updateFn(notificaciones ??= ComunicationsStruct());
  }

  bool hasNoti = true;

  bool hasSolicitud = true;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Communication)] action in Home widget.
  ApiCallResponse? apiResultComunicados;
  // Stores action output result for [Backend Call - API (getListRequestsByUser)] action in Home widget.
  ApiCallResponse? apiResultRequest;
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
