import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/menu/menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'solicitudes_widget.dart' show SolicitudesWidget;
import 'package:flutter/material.dart';

class SolicitudesModel extends FlutterFlowModel<SolicitudesWidget> {
  ///  Local state fields for this page.

  List<TypeRequestStruct> listTypeReques = [];
  void addToListTypeReques(TypeRequestStruct item) => listTypeReques.add(item);
  void removeFromListTypeReques(TypeRequestStruct item) =>
      listTypeReques.remove(item);
  void removeAtIndexFromListTypeReques(int index) =>
      listTypeReques.removeAt(index);
  void insertAtIndexInListTypeReques(int index, TypeRequestStruct item) =>
      listTypeReques.insert(index, item);
  void updateListTypeRequesAtIndex(
          int index, Function(TypeRequestStruct) updateFn) =>
      listTypeReques[index] = updateFn(listTypeReques[index]);

  TypeRequestStruct? requestSelected;
  void updateRequestSelectedStruct(Function(TypeRequestStruct) updateFn) {
    updateFn(requestSelected ??= TypeRequestStruct());
  }

  FFUploadedFile? uploadFiel;

  DateTime? initialDate;

  DateTime? finalDate;

  DateTime? stratTime;

  DateTime? finalTime;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (getListTypesRequests)] action in Solicitudes widget.
  ApiCallResponse? apiResultListRequest;
  // Model for menu component.
  late MenuModel menuModel;
  // State field(s) for DropDownTipoSolicitud widget.
  String? dropDownTipoSolicitudValue;
  FormFieldController<String>? dropDownTipoSolicitudValueController;
  DateTime? datePicked1;
  // State field(s) for txtFechaInicial widget.
  FocusNode? txtFechaInicialFocusNode;
  TextEditingController? txtFechaInicialTextController;
  String? Function(BuildContext, String?)?
      txtFechaInicialTextControllerValidator;
  String? _txtFechaInicialTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Debes elegir una fecha inicial';
    }

    return null;
  }

  DateTime? datePicked2;
  // State field(s) for txtFechaFinal widget.
  FocusNode? txtFechaFinalFocusNode;
  TextEditingController? txtFechaFinalTextController;
  String? Function(BuildContext, String?)? txtFechaFinalTextControllerValidator;
  DateTime? datePicked3;
  // State field(s) for txtHoraInicial widget.
  FocusNode? txtHoraInicialFocusNode;
  TextEditingController? txtHoraInicialTextController;
  String? Function(BuildContext, String?)?
      txtHoraInicialTextControllerValidator;
  DateTime? datePicked4;
  // State field(s) for txtHoraFinal widget.
  FocusNode? txtHoraFinalFocusNode;
  TextEditingController? txtHoraFinalTextController;
  String? Function(BuildContext, String?)? txtHoraFinalTextControllerValidator;
  // State field(s) for txtMotivo widget.
  FocusNode? txtMotivoFocusNode;
  TextEditingController? txtMotivoTextController;
  String? Function(BuildContext, String?)? txtMotivoTextControllerValidator;
  String? _txtMotivoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Debes ingresar el motivo';
    }

    return null;
  }

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (addRequestsByUser)] action in btnSend widget.
  ApiCallResponse? apiResultSolicitud;

  @override
  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
    txtFechaInicialTextControllerValidator =
        _txtFechaInicialTextControllerValidator;
    txtMotivoTextControllerValidator = _txtMotivoTextControllerValidator;
  }

  @override
  void dispose() {
    menuModel.dispose();
    txtFechaInicialFocusNode?.dispose();
    txtFechaInicialTextController?.dispose();

    txtFechaFinalFocusNode?.dispose();
    txtFechaFinalTextController?.dispose();

    txtHoraInicialFocusNode?.dispose();
    txtHoraInicialTextController?.dispose();

    txtHoraFinalFocusNode?.dispose();
    txtHoraFinalTextController?.dispose();

    txtMotivoFocusNode?.dispose();
    txtMotivoTextController?.dispose();
  }
}
