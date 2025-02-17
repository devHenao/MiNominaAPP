import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/menu/menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'perfil_widget.dart' show PerfilWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class PerfilModel extends FlutterFlowModel<PerfilWidget> {
  ///  Local state fields for this page.

  List<NameDptoStruct> listDepto = [];
  void addToListDepto(NameDptoStruct item) => listDepto.add(item);
  void removeFromListDepto(NameDptoStruct item) => listDepto.remove(item);
  void removeAtIndexFromListDepto(int index) => listDepto.removeAt(index);
  void insertAtIndexInListDepto(int index, NameDptoStruct item) =>
      listDepto.insert(index, item);
  void updateListDeptoAtIndex(int index, Function(NameDptoStruct) updateFn) =>
      listDepto[index] = updateFn(listDepto[index]);

  List<DataCityStruct> listCity = [];
  void addToListCity(DataCityStruct item) => listCity.add(item);
  void removeFromListCity(DataCityStruct item) => listCity.remove(item);
  void removeAtIndexFromListCity(int index) => listCity.removeAt(index);
  void insertAtIndexInListCity(int index, DataCityStruct item) =>
      listCity.insert(index, item);
  void updateListCityAtIndex(int index, Function(DataCityStruct) updateFn) =>
      listCity[index] = updateFn(listCity[index]);

  List<PersonalDataStruct> gender = [];
  void addToGender(PersonalDataStruct item) => gender.add(item);
  void removeFromGender(PersonalDataStruct item) => gender.remove(item);
  void removeAtIndexFromGender(int index) => gender.removeAt(index);
  void insertAtIndexInGender(int index, PersonalDataStruct item) =>
      gender.insert(index, item);
  void updateGenderAtIndex(int index, Function(PersonalDataStruct) updateFn) =>
      gender[index] = updateFn(gender[index]);

  List<PersonalDataStruct> maritalStatus = [];
  void addToMaritalStatus(PersonalDataStruct item) => maritalStatus.add(item);
  void removeFromMaritalStatus(PersonalDataStruct item) =>
      maritalStatus.remove(item);
  void removeAtIndexFromMaritalStatus(int index) =>
      maritalStatus.removeAt(index);
  void insertAtIndexInMaritalStatus(int index, PersonalDataStruct item) =>
      maritalStatus.insert(index, item);
  void updateMaritalStatusAtIndex(
          int index, Function(PersonalDataStruct) updateFn) =>
      maritalStatus[index] = updateFn(maritalStatus[index]);

  String? idcity;

  String? nameDpto = 'ANTIOQUIA';

  UpdateProfileStruct? updateData;
  void updateUpdateDataStruct(Function(UpdateProfileStruct) updateFn) {
    updateFn(updateData ??= UpdateProfileStruct());
  }

  String? oldpassword;

  String? newpassword;

  ///  State fields for stateful widgets in this page.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (getListDepto)] action in Perfil widget.
  ApiCallResponse? apiResultDpto;
  // Stores action output result for [Backend Call - API (getListCities)] action in Perfil widget.
  ApiCallResponse? apiResultCity;
  // Stores action output result for [Backend Call - API (getListMaritalStatus)] action in Perfil widget.
  ApiCallResponse? apiResultMaritalStatus;
  // Stores action output result for [Backend Call - API (getListGeneralPerson)] action in Perfil widget.
  ApiCallResponse? apiResultGender;
  // Model for menu component.
  late MenuModel menuModel;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController1;

  // State field(s) for txtCelular widget.
  FocusNode? txtCelularFocusNode;
  TextEditingController? txtCelularTextController;
  String? Function(BuildContext, String?)? txtCelularTextControllerValidator;
  String? _txtCelularTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Debes ingresar un número de celular';
    }

    if (val.length < 10) {
      return 'El número de celular debe tener 10 dígitos.';
    }
    if (val.length > 10) {
      return 'El número debe tener exactamente 10 dígitos.';
    }

    return null;
  }

  // State field(s) for DropDepartment widget.
  String? dropDepartmentValue;
  FormFieldController<String>? dropDepartmentValueController;
  // Stores action output result for [Backend Call - API (getListCities)] action in DropDepartment widget.
  ApiCallResponse? apiResultNewCity;
  // State field(s) for DropCity widget.
  String? dropCityValue;
  FormFieldController<String>? dropCityValueController;
  // State field(s) for txtDireccion widget.
  FocusNode? txtDireccionFocusNode;
  TextEditingController? txtDireccionTextController;
  String? Function(BuildContext, String?)? txtDireccionTextControllerValidator;
  String? _txtDireccionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Debes ingresar una dirreción';
    }

    return null;
  }

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController2;

  // State field(s) for DropSexo widget.
  String? dropSexoValue;
  FormFieldController<String>? dropSexoValueController;
  // State field(s) for DropEstadoCivil widget.
  String? dropEstadoCivilValue;
  FormFieldController<String>? dropEstadoCivilValueController;
  // State field(s) for txtHijos widget.
  FocusNode? txtHijosFocusNode;
  TextEditingController? txtHijosTextController;
  String? Function(BuildContext, String?)? txtHijosTextControllerValidator;
  String? _txtHijosTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Debes ingresar el número de hijos';
    }

    return null;
  }

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController3;

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController4;

  // Stores action output result for [Backend Call - API (updateEmployee)] action in btnUpdate widget.
  ApiCallResponse? apiResultNewInfo;
  // Stores action output result for [Backend Call - API (getDetailEmployee)] action in btnUpdate widget.
  ApiCallResponse? apiResultUpdateInfo;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController5;

  // State field(s) for txtPassword widget.
  FocusNode? txtPasswordFocusNode;
  TextEditingController? txtPasswordTextController;
  late bool txtPasswordVisibility;
  String? Function(BuildContext, String?)? txtPasswordTextControllerValidator;
  String? _txtPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ingresar la contraseña acual';
    }

    return null;
  }

  // State field(s) for txtNewPassword widget.
  FocusNode? txtNewPasswordFocusNode;
  TextEditingController? txtNewPasswordTextController;
  late bool txtNewPasswordVisibility;
  String? Function(BuildContext, String?)?
      txtNewPasswordTextControllerValidator;
  String? _txtNewPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ingresar la nueva contraseña';
    }

    return null;
  }

  // State field(s) for txtConfirmNewPassword widget.
  FocusNode? txtConfirmNewPasswordFocusNode;
  TextEditingController? txtConfirmNewPasswordTextController;
  late bool txtConfirmNewPasswordVisibility;
  String? Function(BuildContext, String?)?
      txtConfirmNewPasswordTextControllerValidator;
  String? _txtConfirmNewPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Confirmar la nueva contraseña';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (changePassword)] action in btnChangePassword widget.
  ApiCallResponse? apiResultsNewPassword;

  @override
  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
    txtCelularTextControllerValidator = _txtCelularTextControllerValidator;
    txtDireccionTextControllerValidator = _txtDireccionTextControllerValidator;
    txtHijosTextControllerValidator = _txtHijosTextControllerValidator;
    txtPasswordVisibility = false;
    txtPasswordTextControllerValidator = _txtPasswordTextControllerValidator;
    txtNewPasswordVisibility = false;
    txtNewPasswordTextControllerValidator =
        _txtNewPasswordTextControllerValidator;
    txtConfirmNewPasswordVisibility = false;
    txtConfirmNewPasswordTextControllerValidator =
        _txtConfirmNewPasswordTextControllerValidator;
  }

  @override
  void dispose() {
    menuModel.dispose();
    expandableExpandableController1.dispose();
    txtCelularFocusNode?.dispose();
    txtCelularTextController?.dispose();

    txtDireccionFocusNode?.dispose();
    txtDireccionTextController?.dispose();

    expandableExpandableController2.dispose();
    txtHijosFocusNode?.dispose();
    txtHijosTextController?.dispose();

    expandableExpandableController3.dispose();
    expandableExpandableController4.dispose();
    expandableExpandableController5.dispose();
    txtPasswordFocusNode?.dispose();
    txtPasswordTextController?.dispose();

    txtNewPasswordFocusNode?.dispose();
    txtNewPasswordTextController?.dispose();

    txtConfirmNewPasswordFocusNode?.dispose();
    txtConfirmNewPasswordTextController?.dispose();
  }
}
