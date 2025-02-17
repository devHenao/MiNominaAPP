// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LsLicensesStruct extends BaseStruct {
  LsLicensesStruct({
    String? fecini,
    String? fecfin,
    int? nroDias,
    String? nota,
    String? descripcio,
  })  : _fecini = fecini,
        _fecfin = fecfin,
        _nroDias = nroDias,
        _nota = nota,
        _descripcio = descripcio;

  // "fecini" field.
  String? _fecini;
  String get fecini => _fecini ?? '';
  set fecini(String? val) => _fecini = val;

  bool hasFecini() => _fecini != null;

  // "fecfin" field.
  String? _fecfin;
  String get fecfin => _fecfin ?? '';
  set fecfin(String? val) => _fecfin = val;

  bool hasFecfin() => _fecfin != null;

  // "nroDias" field.
  int? _nroDias;
  int get nroDias => _nroDias ?? 0;
  set nroDias(int? val) => _nroDias = val;

  void incrementNroDias(int amount) => nroDias = nroDias + amount;

  bool hasNroDias() => _nroDias != null;

  // "nota" field.
  String? _nota;
  String get nota => _nota ?? '';
  set nota(String? val) => _nota = val;

  bool hasNota() => _nota != null;

  // "descripcio" field.
  String? _descripcio;
  String get descripcio => _descripcio ?? '';
  set descripcio(String? val) => _descripcio = val;

  bool hasDescripcio() => _descripcio != null;

  static LsLicensesStruct fromMap(Map<String, dynamic> data) =>
      LsLicensesStruct(
        fecini: data['fecini'] as String?,
        fecfin: data['fecfin'] as String?,
        nroDias: castToType<int>(data['nroDias']),
        nota: data['nota'] as String?,
        descripcio: data['descripcio'] as String?,
      );

  static LsLicensesStruct? maybeFromMap(dynamic data) => data is Map
      ? LsLicensesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'fecini': _fecini,
        'fecfin': _fecfin,
        'nroDias': _nroDias,
        'nota': _nota,
        'descripcio': _descripcio,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'fecini': serializeParam(
          _fecini,
          ParamType.String,
        ),
        'fecfin': serializeParam(
          _fecfin,
          ParamType.String,
        ),
        'nroDias': serializeParam(
          _nroDias,
          ParamType.int,
        ),
        'nota': serializeParam(
          _nota,
          ParamType.String,
        ),
        'descripcio': serializeParam(
          _descripcio,
          ParamType.String,
        ),
      }.withoutNulls;

  static LsLicensesStruct fromSerializableMap(Map<String, dynamic> data) =>
      LsLicensesStruct(
        fecini: deserializeParam(
          data['fecini'],
          ParamType.String,
          false,
        ),
        fecfin: deserializeParam(
          data['fecfin'],
          ParamType.String,
          false,
        ),
        nroDias: deserializeParam(
          data['nroDias'],
          ParamType.int,
          false,
        ),
        nota: deserializeParam(
          data['nota'],
          ParamType.String,
          false,
        ),
        descripcio: deserializeParam(
          data['descripcio'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'LsLicensesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LsLicensesStruct &&
        fecini == other.fecini &&
        fecfin == other.fecfin &&
        nroDias == other.nroDias &&
        nota == other.nota &&
        descripcio == other.descripcio;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([fecini, fecfin, nroDias, nota, descripcio]);
}

LsLicensesStruct createLsLicensesStruct({
  String? fecini,
  String? fecfin,
  int? nroDias,
  String? nota,
  String? descripcio,
}) =>
    LsLicensesStruct(
      fecini: fecini,
      fecfin: fecfin,
      nroDias: nroDias,
      nota: nota,
      descripcio: descripcio,
    );
