import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _idEnterprise = '';
  String get idEnterprise => _idEnterprise;
  set idEnterprise(String value) {
    _idEnterprise = value;
  }

  String _token = '';
  String get token => _token;
  set token(String value) {
    _token = value;
  }

  EmployeeStruct _dataEmploye = EmployeeStruct();
  EmployeeStruct get dataEmploye => _dataEmploye;
  set dataEmploye(EmployeeStruct value) {
    _dataEmploye = value;
  }

  void updateDataEmployeStruct(Function(EmployeeStruct) updateFn) {
    updateFn(_dataEmploye);
  }

  String _Email = '';
  String get Email => _Email;
  set Email(String value) {
    _Email = value;
  }

  String _Nit = '';
  String get Nit => _Nit;
  set Nit(String value) {
    _Nit = value;
  }

  bool _Remember = false;
  bool get Remember => _Remember;
  set Remember(bool value) {
    _Remember = value;
  }

  String _Cargo = '';
  String get Cargo => _Cargo;
  set Cargo(String value) {
    _Cargo = value;
  }
}
