// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ListClosedStruct extends BaseStruct {
  ListClosedStruct({
    String? asunto,
    String? consecutivo,
    String? de,
    String? dependencia,
    String? desde,
    String? empleado,
    String? grupo,
    String? hasta,
    String? mensaje,
    String? para,
  })  : _asunto = asunto,
        _consecutivo = consecutivo,
        _de = de,
        _dependencia = dependencia,
        _desde = desde,
        _empleado = empleado,
        _grupo = grupo,
        _hasta = hasta,
        _mensaje = mensaje,
        _para = para;

  // "asunto" field.
  String? _asunto;
  String get asunto => _asunto ?? '';
  set asunto(String? val) => _asunto = val;

  bool hasAsunto() => _asunto != null;

  // "consecutivo" field.
  String? _consecutivo;
  String get consecutivo => _consecutivo ?? '';
  set consecutivo(String? val) => _consecutivo = val;

  bool hasConsecutivo() => _consecutivo != null;

  // "de" field.
  String? _de;
  String get de => _de ?? '';
  set de(String? val) => _de = val;

  bool hasDe() => _de != null;

  // "dependencia" field.
  String? _dependencia;
  String get dependencia => _dependencia ?? '';
  set dependencia(String? val) => _dependencia = val;

  bool hasDependencia() => _dependencia != null;

  // "desde" field.
  String? _desde;
  String get desde => _desde ?? '';
  set desde(String? val) => _desde = val;

  bool hasDesde() => _desde != null;

  // "empleado" field.
  String? _empleado;
  String get empleado => _empleado ?? '';
  set empleado(String? val) => _empleado = val;

  bool hasEmpleado() => _empleado != null;

  // "grupo" field.
  String? _grupo;
  String get grupo => _grupo ?? '';
  set grupo(String? val) => _grupo = val;

  bool hasGrupo() => _grupo != null;

  // "hasta" field.
  String? _hasta;
  String get hasta => _hasta ?? '';
  set hasta(String? val) => _hasta = val;

  bool hasHasta() => _hasta != null;

  // "mensaje" field.
  String? _mensaje;
  String get mensaje => _mensaje ?? '';
  set mensaje(String? val) => _mensaje = val;

  bool hasMensaje() => _mensaje != null;

  // "para" field.
  String? _para;
  String get para => _para ?? '';
  set para(String? val) => _para = val;

  bool hasPara() => _para != null;

  static ListClosedStruct fromMap(Map<String, dynamic> data) =>
      ListClosedStruct(
        asunto: data['asunto'] as String?,
        consecutivo: data['consecutivo'] as String?,
        de: data['de'] as String?,
        dependencia: data['dependencia'] as String?,
        desde: data['desde'] as String?,
        empleado: data['empleado'] as String?,
        grupo: data['grupo'] as String?,
        hasta: data['hasta'] as String?,
        mensaje: data['mensaje'] as String?,
        para: data['para'] as String?,
      );

  static ListClosedStruct? maybeFromMap(dynamic data) => data is Map
      ? ListClosedStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'asunto': _asunto,
        'consecutivo': _consecutivo,
        'de': _de,
        'dependencia': _dependencia,
        'desde': _desde,
        'empleado': _empleado,
        'grupo': _grupo,
        'hasta': _hasta,
        'mensaje': _mensaje,
        'para': _para,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'asunto': serializeParam(
          _asunto,
          ParamType.String,
        ),
        'consecutivo': serializeParam(
          _consecutivo,
          ParamType.String,
        ),
        'de': serializeParam(
          _de,
          ParamType.String,
        ),
        'dependencia': serializeParam(
          _dependencia,
          ParamType.String,
        ),
        'desde': serializeParam(
          _desde,
          ParamType.String,
        ),
        'empleado': serializeParam(
          _empleado,
          ParamType.String,
        ),
        'grupo': serializeParam(
          _grupo,
          ParamType.String,
        ),
        'hasta': serializeParam(
          _hasta,
          ParamType.String,
        ),
        'mensaje': serializeParam(
          _mensaje,
          ParamType.String,
        ),
        'para': serializeParam(
          _para,
          ParamType.String,
        ),
      }.withoutNulls;

  static ListClosedStruct fromSerializableMap(Map<String, dynamic> data) =>
      ListClosedStruct(
        asunto: deserializeParam(
          data['asunto'],
          ParamType.String,
          false,
        ),
        consecutivo: deserializeParam(
          data['consecutivo'],
          ParamType.String,
          false,
        ),
        de: deserializeParam(
          data['de'],
          ParamType.String,
          false,
        ),
        dependencia: deserializeParam(
          data['dependencia'],
          ParamType.String,
          false,
        ),
        desde: deserializeParam(
          data['desde'],
          ParamType.String,
          false,
        ),
        empleado: deserializeParam(
          data['empleado'],
          ParamType.String,
          false,
        ),
        grupo: deserializeParam(
          data['grupo'],
          ParamType.String,
          false,
        ),
        hasta: deserializeParam(
          data['hasta'],
          ParamType.String,
          false,
        ),
        mensaje: deserializeParam(
          data['mensaje'],
          ParamType.String,
          false,
        ),
        para: deserializeParam(
          data['para'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ListClosedStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ListClosedStruct &&
        asunto == other.asunto &&
        consecutivo == other.consecutivo &&
        de == other.de &&
        dependencia == other.dependencia &&
        desde == other.desde &&
        empleado == other.empleado &&
        grupo == other.grupo &&
        hasta == other.hasta &&
        mensaje == other.mensaje &&
        para == other.para;
  }

  @override
  int get hashCode => const ListEquality().hash([
        asunto,
        consecutivo,
        de,
        dependencia,
        desde,
        empleado,
        grupo,
        hasta,
        mensaje,
        para
      ]);
}

ListClosedStruct createListClosedStruct({
  String? asunto,
  String? consecutivo,
  String? de,
  String? dependencia,
  String? desde,
  String? empleado,
  String? grupo,
  String? hasta,
  String? mensaje,
  String? para,
}) =>
    ListClosedStruct(
      asunto: asunto,
      consecutivo: consecutivo,
      de: de,
      dependencia: dependencia,
      desde: desde,
      empleado: empleado,
      grupo: grupo,
      hasta: hasta,
      mensaje: mensaje,
      para: para,
    );
