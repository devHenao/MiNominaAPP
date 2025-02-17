// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DetailNominaStruct extends BaseStruct {
  DetailNominaStruct({
    String? consecutivo,
    String? tipoDcto,
    String? empleado,
    String? nombreBanco,
    String? fechaInicial,
    String? fechaFinal,
    String? nombreCargo,
    String? centroCosto,
    String? concepto,
    String? nombreConcepto,
    double? total,
    double? horas,
    String? nroDcto,
  })  : _consecutivo = consecutivo,
        _tipoDcto = tipoDcto,
        _empleado = empleado,
        _nombreBanco = nombreBanco,
        _fechaInicial = fechaInicial,
        _fechaFinal = fechaFinal,
        _nombreCargo = nombreCargo,
        _centroCosto = centroCosto,
        _concepto = concepto,
        _nombreConcepto = nombreConcepto,
        _total = total,
        _horas = horas,
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

  // "Empleado" field.
  String? _empleado;
  String get empleado => _empleado ?? '';
  set empleado(String? val) => _empleado = val;

  bool hasEmpleado() => _empleado != null;

  // "Nombre_Banco" field.
  String? _nombreBanco;
  String get nombreBanco => _nombreBanco ?? '';
  set nombreBanco(String? val) => _nombreBanco = val;

  bool hasNombreBanco() => _nombreBanco != null;

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

  // "Nombre_Cargo" field.
  String? _nombreCargo;
  String get nombreCargo => _nombreCargo ?? '';
  set nombreCargo(String? val) => _nombreCargo = val;

  bool hasNombreCargo() => _nombreCargo != null;

  // "Centro_Costo" field.
  String? _centroCosto;
  String get centroCosto => _centroCosto ?? '';
  set centroCosto(String? val) => _centroCosto = val;

  bool hasCentroCosto() => _centroCosto != null;

  // "Concepto" field.
  String? _concepto;
  String get concepto => _concepto ?? '';
  set concepto(String? val) => _concepto = val;

  bool hasConcepto() => _concepto != null;

  // "Nombre_Concepto" field.
  String? _nombreConcepto;
  String get nombreConcepto => _nombreConcepto ?? '';
  set nombreConcepto(String? val) => _nombreConcepto = val;

  bool hasNombreConcepto() => _nombreConcepto != null;

  // "Total" field.
  double? _total;
  double get total => _total ?? 0.0;
  set total(double? val) => _total = val;

  void incrementTotal(double amount) => total = total + amount;

  bool hasTotal() => _total != null;

  // "Horas" field.
  double? _horas;
  double get horas => _horas ?? 0.0;
  set horas(double? val) => _horas = val;

  void incrementHoras(double amount) => horas = horas + amount;

  bool hasHoras() => _horas != null;

  // "nroDcto" field.
  String? _nroDcto;
  String get nroDcto => _nroDcto ?? '';
  set nroDcto(String? val) => _nroDcto = val;

  bool hasNroDcto() => _nroDcto != null;

  static DetailNominaStruct fromMap(Map<String, dynamic> data) =>
      DetailNominaStruct(
        consecutivo: data['consecutivo'] as String?,
        tipoDcto: data['tipo_Dcto'] as String?,
        empleado: data['Empleado'] as String?,
        nombreBanco: data['Nombre_Banco'] as String?,
        fechaInicial: data['Fecha_Inicial'] as String?,
        fechaFinal: data['Fecha_Final'] as String?,
        nombreCargo: data['Nombre_Cargo'] as String?,
        centroCosto: data['Centro_Costo'] as String?,
        concepto: data['Concepto'] as String?,
        nombreConcepto: data['Nombre_Concepto'] as String?,
        total: castToType<double>(data['Total']),
        horas: castToType<double>(data['Horas']),
        nroDcto: data['nroDcto'] as String?,
      );

  static DetailNominaStruct? maybeFromMap(dynamic data) => data is Map
      ? DetailNominaStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'consecutivo': _consecutivo,
        'tipo_Dcto': _tipoDcto,
        'Empleado': _empleado,
        'Nombre_Banco': _nombreBanco,
        'Fecha_Inicial': _fechaInicial,
        'Fecha_Final': _fechaFinal,
        'Nombre_Cargo': _nombreCargo,
        'Centro_Costo': _centroCosto,
        'Concepto': _concepto,
        'Nombre_Concepto': _nombreConcepto,
        'Total': _total,
        'Horas': _horas,
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
        'Empleado': serializeParam(
          _empleado,
          ParamType.String,
        ),
        'Nombre_Banco': serializeParam(
          _nombreBanco,
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
        'Nombre_Cargo': serializeParam(
          _nombreCargo,
          ParamType.String,
        ),
        'Centro_Costo': serializeParam(
          _centroCosto,
          ParamType.String,
        ),
        'Concepto': serializeParam(
          _concepto,
          ParamType.String,
        ),
        'Nombre_Concepto': serializeParam(
          _nombreConcepto,
          ParamType.String,
        ),
        'Total': serializeParam(
          _total,
          ParamType.double,
        ),
        'Horas': serializeParam(
          _horas,
          ParamType.double,
        ),
        'nroDcto': serializeParam(
          _nroDcto,
          ParamType.String,
        ),
      }.withoutNulls;

  static DetailNominaStruct fromSerializableMap(Map<String, dynamic> data) =>
      DetailNominaStruct(
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
        empleado: deserializeParam(
          data['Empleado'],
          ParamType.String,
          false,
        ),
        nombreBanco: deserializeParam(
          data['Nombre_Banco'],
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
        nombreCargo: deserializeParam(
          data['Nombre_Cargo'],
          ParamType.String,
          false,
        ),
        centroCosto: deserializeParam(
          data['Centro_Costo'],
          ParamType.String,
          false,
        ),
        concepto: deserializeParam(
          data['Concepto'],
          ParamType.String,
          false,
        ),
        nombreConcepto: deserializeParam(
          data['Nombre_Concepto'],
          ParamType.String,
          false,
        ),
        total: deserializeParam(
          data['Total'],
          ParamType.double,
          false,
        ),
        horas: deserializeParam(
          data['Horas'],
          ParamType.double,
          false,
        ),
        nroDcto: deserializeParam(
          data['nroDcto'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DetailNominaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DetailNominaStruct &&
        consecutivo == other.consecutivo &&
        tipoDcto == other.tipoDcto &&
        empleado == other.empleado &&
        nombreBanco == other.nombreBanco &&
        fechaInicial == other.fechaInicial &&
        fechaFinal == other.fechaFinal &&
        nombreCargo == other.nombreCargo &&
        centroCosto == other.centroCosto &&
        concepto == other.concepto &&
        nombreConcepto == other.nombreConcepto &&
        total == other.total &&
        horas == other.horas &&
        nroDcto == other.nroDcto;
  }

  @override
  int get hashCode => const ListEquality().hash([
        consecutivo,
        tipoDcto,
        empleado,
        nombreBanco,
        fechaInicial,
        fechaFinal,
        nombreCargo,
        centroCosto,
        concepto,
        nombreConcepto,
        total,
        horas,
        nroDcto
      ]);
}

DetailNominaStruct createDetailNominaStruct({
  String? consecutivo,
  String? tipoDcto,
  String? empleado,
  String? nombreBanco,
  String? fechaInicial,
  String? fechaFinal,
  String? nombreCargo,
  String? centroCosto,
  String? concepto,
  String? nombreConcepto,
  double? total,
  double? horas,
  String? nroDcto,
}) =>
    DetailNominaStruct(
      consecutivo: consecutivo,
      tipoDcto: tipoDcto,
      empleado: empleado,
      nombreBanco: nombreBanco,
      fechaInicial: fechaInicial,
      fechaFinal: fechaFinal,
      nombreCargo: nombreCargo,
      centroCosto: centroCosto,
      concepto: concepto,
      nombreConcepto: nombreConcepto,
      total: total,
      horas: horas,
      nroDcto: nroDcto,
    );
