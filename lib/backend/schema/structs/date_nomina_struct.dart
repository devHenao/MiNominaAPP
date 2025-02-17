// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DateNominaStruct extends BaseStruct {
  DateNominaStruct({
    String? consecutivo,
    String? tipoDcto,
    String? fechaInicial,
    String? fechaFinal,
    int? diaPago,
    String? nroDcto,
  })  : _consecutivo = consecutivo,
        _tipoDcto = tipoDcto,
        _fechaInicial = fechaInicial,
        _fechaFinal = fechaFinal,
        _diaPago = diaPago,
        _nroDcto = nroDcto;

  // "consecutivo" field.
  String? _consecutivo;
  String get consecutivo => _consecutivo ?? '';
  set consecutivo(String? val) => _consecutivo = val;

  bool hasConsecutivo() => _consecutivo != null;

  // "tipo_Dcto" field.
  String? _tipoDcto;
  String get tipoDcto => _tipoDcto ?? '';
  set tipoDcto(String? val) => _tipoDcto = val;

  bool hasTipoDcto() => _tipoDcto != null;

  // "Fecha_Inicial" field.
  String? _fechaInicial;
  String get fechaInicial => _fechaInicial ?? '';
  set fechaInicial(String? val) => _fechaInicial = val;

  bool hasFechaInicial() => _fechaInicial != null;

  // "Fecha_Final" field.
  String? _fechaFinal;
  String get fechaFinal => _fechaFinal ?? '';
  set fechaFinal(String? val) => _fechaFinal = val;

  bool hasFechaFinal() => _fechaFinal != null;

  // "Dia_pago" field.
  int? _diaPago;
  int get diaPago => _diaPago ?? 0;
  set diaPago(int? val) => _diaPago = val;

  void incrementDiaPago(int amount) => diaPago = diaPago + amount;

  bool hasDiaPago() => _diaPago != null;

  // "nroDcto" field.
  String? _nroDcto;
  String get nroDcto => _nroDcto ?? '';
  set nroDcto(String? val) => _nroDcto = val;

  bool hasNroDcto() => _nroDcto != null;

  static DateNominaStruct fromMap(Map<String, dynamic> data) =>
      DateNominaStruct(
        consecutivo: data['consecutivo'] as String?,
        tipoDcto: data['tipo_Dcto'] as String?,
        fechaInicial: data['Fecha_Inicial'] as String?,
        fechaFinal: data['Fecha_Final'] as String?,
        diaPago: castToType<int>(data['Dia_pago']),
        nroDcto: data['nroDcto'] as String?,
      );

  static DateNominaStruct? maybeFromMap(dynamic data) => data is Map
      ? DateNominaStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'consecutivo': _consecutivo,
        'tipo_Dcto': _tipoDcto,
        'Fecha_Inicial': _fechaInicial,
        'Fecha_Final': _fechaFinal,
        'Dia_pago': _diaPago,
        'nroDcto': _nroDcto,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'consecutivo': serializeParam(
          _consecutivo,
          ParamType.String,
        ),
        'tipo_Dcto': serializeParam(
          _tipoDcto,
          ParamType.String,
        ),
        'Fecha_Inicial': serializeParam(
          _fechaInicial,
          ParamType.String,
        ),
        'Fecha_Final': serializeParam(
          _fechaFinal,
          ParamType.String,
        ),
        'Dia_pago': serializeParam(
          _diaPago,
          ParamType.int,
        ),
        'nroDcto': serializeParam(
          _nroDcto,
          ParamType.String,
        ),
      }.withoutNulls;

  static DateNominaStruct fromSerializableMap(Map<String, dynamic> data) =>
      DateNominaStruct(
        consecutivo: deserializeParam(
          data['consecutivo'],
          ParamType.String,
          false,
        ),
        tipoDcto: deserializeParam(
          data['tipo_Dcto'],
          ParamType.String,
          false,
        ),
        fechaInicial: deserializeParam(
          data['Fecha_Inicial'],
          ParamType.String,
          false,
        ),
        fechaFinal: deserializeParam(
          data['Fecha_Final'],
          ParamType.String,
          false,
        ),
        diaPago: deserializeParam(
          data['Dia_pago'],
          ParamType.int,
          false,
        ),
        nroDcto: deserializeParam(
          data['nroDcto'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DateNominaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DateNominaStruct &&
        consecutivo == other.consecutivo &&
        tipoDcto == other.tipoDcto &&
        fechaInicial == other.fechaInicial &&
        fechaFinal == other.fechaFinal &&
        diaPago == other.diaPago &&
        nroDcto == other.nroDcto;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [consecutivo, tipoDcto, fechaInicial, fechaFinal, diaPago, nroDcto]);
}

DateNominaStruct createDateNominaStruct({
  String? consecutivo,
  String? tipoDcto,
  String? fechaInicial,
  String? fechaFinal,
  int? diaPago,
  String? nroDcto,
}) =>
    DateNominaStruct(
      consecutivo: consecutivo,
      tipoDcto: tipoDcto,
      fechaInicial: fechaInicial,
      fechaFinal: fechaFinal,
      diaPago: diaPago,
      nroDcto: nroDcto,
    );
