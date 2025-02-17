// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DataCityStruct extends BaseStruct {
  DataCityStruct({
    String? codigo,
    String? nomciud,
    String? nomdpto,
    String? stadsincro,
  })  : _codigo = codigo,
        _nomciud = nomciud,
        _nomdpto = nomdpto,
        _stadsincro = stadsincro;

  // "CODIGO" field.
  String? _codigo;
  String get codigo => _codigo ?? '';
  set codigo(String? val) => _codigo = val;

  bool hasCodigo() => _codigo != null;

  // "NOMCIUD" field.
  String? _nomciud;
  String get nomciud => _nomciud ?? '';
  set nomciud(String? val) => _nomciud = val;

  bool hasNomciud() => _nomciud != null;

  // "NOMDPTO" field.
  String? _nomdpto;
  String get nomdpto => _nomdpto ?? '';
  set nomdpto(String? val) => _nomdpto = val;

  bool hasNomdpto() => _nomdpto != null;

  // "STADSINCRO" field.
  String? _stadsincro;
  String get stadsincro => _stadsincro ?? '';
  set stadsincro(String? val) => _stadsincro = val;

  bool hasStadsincro() => _stadsincro != null;

  static DataCityStruct fromMap(Map<String, dynamic> data) => DataCityStruct(
        codigo: data['CODIGO'] as String?,
        nomciud: data['NOMCIUD'] as String?,
        nomdpto: data['NOMDPTO'] as String?,
        stadsincro: data['STADSINCRO'] as String?,
      );

  static DataCityStruct? maybeFromMap(dynamic data) =>
      data is Map ? DataCityStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'CODIGO': _codigo,
        'NOMCIUD': _nomciud,
        'NOMDPTO': _nomdpto,
        'STADSINCRO': _stadsincro,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'CODIGO': serializeParam(
          _codigo,
          ParamType.String,
        ),
        'NOMCIUD': serializeParam(
          _nomciud,
          ParamType.String,
        ),
        'NOMDPTO': serializeParam(
          _nomdpto,
          ParamType.String,
        ),
        'STADSINCRO': serializeParam(
          _stadsincro,
          ParamType.String,
        ),
      }.withoutNulls;

  static DataCityStruct fromSerializableMap(Map<String, dynamic> data) =>
      DataCityStruct(
        codigo: deserializeParam(
          data['CODIGO'],
          ParamType.String,
          false,
        ),
        nomciud: deserializeParam(
          data['NOMCIUD'],
          ParamType.String,
          false,
        ),
        nomdpto: deserializeParam(
          data['NOMDPTO'],
          ParamType.String,
          false,
        ),
        stadsincro: deserializeParam(
          data['STADSINCRO'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DataCityStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DataCityStruct &&
        codigo == other.codigo &&
        nomciud == other.nomciud &&
        nomdpto == other.nomdpto &&
        stadsincro == other.stadsincro;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([codigo, nomciud, nomdpto, stadsincro]);
}

DataCityStruct createDataCityStruct({
  String? codigo,
  String? nomciud,
  String? nomdpto,
  String? stadsincro,
}) =>
    DataCityStruct(
      codigo: codigo,
      nomciud: nomciud,
      nomdpto: nomdpto,
      stadsincro: stadsincro,
    );
