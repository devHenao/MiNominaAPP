// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DataBookStruct extends BaseStruct {
  DataBookStruct({
    VacationsStruct? vacations,
    List<LsDisabilitiesStruct>? lsDisabilities,
    List<LsLicensesStruct>? lsLicenses,
  })  : _vacations = vacations,
        _lsDisabilities = lsDisabilities,
        _lsLicenses = lsLicenses;

  // "vacations" field.
  VacationsStruct? _vacations;
  VacationsStruct get vacations => _vacations ?? VacationsStruct();
  set vacations(VacationsStruct? val) => _vacations = val;

  void updateVacations(Function(VacationsStruct) updateFn) {
    updateFn(_vacations ??= VacationsStruct());
  }

  bool hasVacations() => _vacations != null;

  // "lsDisabilities" field.
  List<LsDisabilitiesStruct>? _lsDisabilities;
  List<LsDisabilitiesStruct> get lsDisabilities => _lsDisabilities ?? const [];
  set lsDisabilities(List<LsDisabilitiesStruct>? val) => _lsDisabilities = val;

  void updateLsDisabilities(Function(List<LsDisabilitiesStruct>) updateFn) {
    updateFn(_lsDisabilities ??= []);
  }

  bool hasLsDisabilities() => _lsDisabilities != null;

  // "lsLicenses" field.
  List<LsLicensesStruct>? _lsLicenses;
  List<LsLicensesStruct> get lsLicenses => _lsLicenses ?? const [];
  set lsLicenses(List<LsLicensesStruct>? val) => _lsLicenses = val;

  void updateLsLicenses(Function(List<LsLicensesStruct>) updateFn) {
    updateFn(_lsLicenses ??= []);
  }

  bool hasLsLicenses() => _lsLicenses != null;

  static DataBookStruct fromMap(Map<String, dynamic> data) => DataBookStruct(
        vacations: data['vacations'] is VacationsStruct
            ? data['vacations']
            : VacationsStruct.maybeFromMap(data['vacations']),
        lsDisabilities: getStructList(
          data['lsDisabilities'],
          LsDisabilitiesStruct.fromMap,
        ),
        lsLicenses: getStructList(
          data['lsLicenses'],
          LsLicensesStruct.fromMap,
        ),
      );

  static DataBookStruct? maybeFromMap(dynamic data) =>
      data is Map ? DataBookStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'vacations': _vacations?.toMap(),
        'lsDisabilities': _lsDisabilities?.map((e) => e.toMap()).toList(),
        'lsLicenses': _lsLicenses?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'vacations': serializeParam(
          _vacations,
          ParamType.DataStruct,
        ),
        'lsDisabilities': serializeParam(
          _lsDisabilities,
          ParamType.DataStruct,
          isList: true,
        ),
        'lsLicenses': serializeParam(
          _lsLicenses,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static DataBookStruct fromSerializableMap(Map<String, dynamic> data) =>
      DataBookStruct(
        vacations: deserializeStructParam(
          data['vacations'],
          ParamType.DataStruct,
          false,
          structBuilder: VacationsStruct.fromSerializableMap,
        ),
        lsDisabilities: deserializeStructParam<LsDisabilitiesStruct>(
          data['lsDisabilities'],
          ParamType.DataStruct,
          true,
          structBuilder: LsDisabilitiesStruct.fromSerializableMap,
        ),
        lsLicenses: deserializeStructParam<LsLicensesStruct>(
          data['lsLicenses'],
          ParamType.DataStruct,
          true,
          structBuilder: LsLicensesStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'DataBookStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is DataBookStruct &&
        vacations == other.vacations &&
        listEquality.equals(lsDisabilities, other.lsDisabilities) &&
        listEquality.equals(lsLicenses, other.lsLicenses);
  }

  @override
  int get hashCode =>
      const ListEquality().hash([vacations, lsDisabilities, lsLicenses]);
}

DataBookStruct createDataBookStruct({
  VacationsStruct? vacations,
}) =>
    DataBookStruct(
      vacations: vacations ?? VacationsStruct(),
    );
