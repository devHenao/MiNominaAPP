// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RequestStruct extends BaseStruct {
  RequestStruct({
    String? codigoEmpleado,
    String? codigoSolicitud,
    String? fechaInicial,
    String? fechaFinal,
    String? motivo,
    String? idAdjunto,
    String? aprobado,
    String? aprobadoPor,
    String? mensajeAprobacion,
    String? id,
    String? codigoSolicitudTxt,
  })  : _codigoEmpleado = codigoEmpleado,
        _codigoSolicitud = codigoSolicitud,
        _fechaInicial = fechaInicial,
        _fechaFinal = fechaFinal,
        _motivo = motivo,
        _idAdjunto = idAdjunto,
        _aprobado = aprobado,
        _aprobadoPor = aprobadoPor,
        _mensajeAprobacion = mensajeAprobacion,
        _id = id,
        _codigoSolicitudTxt = codigoSolicitudTxt;

  // "CodigoEmpleado" field.
  String? _codigoEmpleado;
  String get codigoEmpleado => _codigoEmpleado ?? '';
  set codigoEmpleado(String? val) => _codigoEmpleado = val;

  bool hasCodigoEmpleado() => _codigoEmpleado != null;

  // "CodigoSolicitud" field.
  String? _codigoSolicitud;
  String get codigoSolicitud => _codigoSolicitud ?? '';
  set codigoSolicitud(String? val) => _codigoSolicitud = val;

  bool hasCodigoSolicitud() => _codigoSolicitud != null;

  // "FechaInicial" field.
  String? _fechaInicial;
  String get fechaInicial => _fechaInicial ?? '';
  set fechaInicial(String? val) => _fechaInicial = val;

  bool hasFechaInicial() => _fechaInicial != null;

  // "FechaFinal" field.
  String? _fechaFinal;
  String get fechaFinal => _fechaFinal ?? '';
  set fechaFinal(String? val) => _fechaFinal = val;

  bool hasFechaFinal() => _fechaFinal != null;

  // "Motivo" field.
  String? _motivo;
  String get motivo => _motivo ?? '';
  set motivo(String? val) => _motivo = val;

  bool hasMotivo() => _motivo != null;

  // "idAdjunto" field.
  String? _idAdjunto;
  String get idAdjunto => _idAdjunto ?? '';
  set idAdjunto(String? val) => _idAdjunto = val;

  bool hasIdAdjunto() => _idAdjunto != null;

  // "Aprobado" field.
  String? _aprobado;
  String get aprobado => _aprobado ?? '';
  set aprobado(String? val) => _aprobado = val;

  bool hasAprobado() => _aprobado != null;

  // "AprobadoPor" field.
  String? _aprobadoPor;
  String get aprobadoPor => _aprobadoPor ?? '';
  set aprobadoPor(String? val) => _aprobadoPor = val;

  bool hasAprobadoPor() => _aprobadoPor != null;

  // "MensajeAprobacion" field.
  String? _mensajeAprobacion;
  String get mensajeAprobacion => _mensajeAprobacion ?? '';
  set mensajeAprobacion(String? val) => _mensajeAprobacion = val;

  bool hasMensajeAprobacion() => _mensajeAprobacion != null;

  // "Id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "CodigoSolicitudTxt" field.
  String? _codigoSolicitudTxt;
  String get codigoSolicitudTxt => _codigoSolicitudTxt ?? '';
  set codigoSolicitudTxt(String? val) => _codigoSolicitudTxt = val;

  bool hasCodigoSolicitudTxt() => _codigoSolicitudTxt != null;

  static RequestStruct fromMap(Map<String, dynamic> data) => RequestStruct(
        codigoEmpleado: data['CodigoEmpleado'] as String?,
        codigoSolicitud: data['CodigoSolicitud'] as String?,
        fechaInicial: data['FechaInicial'] as String?,
        fechaFinal: data['FechaFinal'] as String?,
        motivo: data['Motivo'] as String?,
        idAdjunto: data['idAdjunto'] as String?,
        aprobado: data['Aprobado'] as String?,
        aprobadoPor: data['AprobadoPor'] as String?,
        mensajeAprobacion: data['MensajeAprobacion'] as String?,
        id: data['Id'] as String?,
        codigoSolicitudTxt: data['CodigoSolicitudTxt'] as String?,
      );

  static RequestStruct? maybeFromMap(dynamic data) =>
      data is Map ? RequestStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'CodigoEmpleado': _codigoEmpleado,
        'CodigoSolicitud': _codigoSolicitud,
        'FechaInicial': _fechaInicial,
        'FechaFinal': _fechaFinal,
        'Motivo': _motivo,
        'idAdjunto': _idAdjunto,
        'Aprobado': _aprobado,
        'AprobadoPor': _aprobadoPor,
        'MensajeAprobacion': _mensajeAprobacion,
        'Id': _id,
        'CodigoSolicitudTxt': _codigoSolicitudTxt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'CodigoEmpleado': serializeParam(
          _codigoEmpleado,
          ParamType.String,
        ),
        'CodigoSolicitud': serializeParam(
          _codigoSolicitud,
          ParamType.String,
        ),
        'FechaInicial': serializeParam(
          _fechaInicial,
          ParamType.String,
        ),
        'FechaFinal': serializeParam(
          _fechaFinal,
          ParamType.String,
        ),
        'Motivo': serializeParam(
          _motivo,
          ParamType.String,
        ),
        'idAdjunto': serializeParam(
          _idAdjunto,
          ParamType.String,
        ),
        'Aprobado': serializeParam(
          _aprobado,
          ParamType.String,
        ),
        'AprobadoPor': serializeParam(
          _aprobadoPor,
          ParamType.String,
        ),
        'MensajeAprobacion': serializeParam(
          _mensajeAprobacion,
          ParamType.String,
        ),
        'Id': serializeParam(
          _id,
          ParamType.String,
        ),
        'CodigoSolicitudTxt': serializeParam(
          _codigoSolicitudTxt,
          ParamType.String,
        ),
      }.withoutNulls;

  static RequestStruct fromSerializableMap(Map<String, dynamic> data) =>
      RequestStruct(
        codigoEmpleado: deserializeParam(
          data['CodigoEmpleado'],
          ParamType.String,
          false,
        ),
        codigoSolicitud: deserializeParam(
          data['CodigoSolicitud'],
          ParamType.String,
          false,
        ),
        fechaInicial: deserializeParam(
          data['FechaInicial'],
          ParamType.String,
          false,
        ),
        fechaFinal: deserializeParam(
          data['FechaFinal'],
          ParamType.String,
          false,
        ),
        motivo: deserializeParam(
          data['Motivo'],
          ParamType.String,
          false,
        ),
        idAdjunto: deserializeParam(
          data['idAdjunto'],
          ParamType.String,
          false,
        ),
        aprobado: deserializeParam(
          data['Aprobado'],
          ParamType.String,
          false,
        ),
        aprobadoPor: deserializeParam(
          data['AprobadoPor'],
          ParamType.String,
          false,
        ),
        mensajeAprobacion: deserializeParam(
          data['MensajeAprobacion'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['Id'],
          ParamType.String,
          false,
        ),
        codigoSolicitudTxt: deserializeParam(
          data['CodigoSolicitudTxt'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'RequestStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RequestStruct &&
        codigoEmpleado == other.codigoEmpleado &&
        codigoSolicitud == other.codigoSolicitud &&
        fechaInicial == other.fechaInicial &&
        fechaFinal == other.fechaFinal &&
        motivo == other.motivo &&
        idAdjunto == other.idAdjunto &&
        aprobado == other.aprobado &&
        aprobadoPor == other.aprobadoPor &&
        mensajeAprobacion == other.mensajeAprobacion &&
        id == other.id &&
        codigoSolicitudTxt == other.codigoSolicitudTxt;
  }

  @override
  int get hashCode => const ListEquality().hash([
        codigoEmpleado,
        codigoSolicitud,
        fechaInicial,
        fechaFinal,
        motivo,
        idAdjunto,
        aprobado,
        aprobadoPor,
        mensajeAprobacion,
        id,
        codigoSolicitudTxt
      ]);
}

RequestStruct createRequestStruct({
  String? codigoEmpleado,
  String? codigoSolicitud,
  String? fechaInicial,
  String? fechaFinal,
  String? motivo,
  String? idAdjunto,
  String? aprobado,
  String? aprobadoPor,
  String? mensajeAprobacion,
  String? id,
  String? codigoSolicitudTxt,
}) =>
    RequestStruct(
      codigoEmpleado: codigoEmpleado,
      codigoSolicitud: codigoSolicitud,
      fechaInicial: fechaInicial,
      fechaFinal: fechaFinal,
      motivo: motivo,
      idAdjunto: idAdjunto,
      aprobado: aprobado,
      aprobadoPor: aprobadoPor,
      mensajeAprobacion: mensajeAprobacion,
      id: id,
      codigoSolicitudTxt: codigoSolicitudTxt,
    );
