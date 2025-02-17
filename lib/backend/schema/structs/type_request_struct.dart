// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TypeRequestStruct extends BaseStruct {
  TypeRequestStruct({
    String? codigo,
    String? dctoRequeridos,
    String? nombre,
    String? politica,
  })  : _codigo = codigo,
        _dctoRequeridos = dctoRequeridos,
        _nombre = nombre,
        _politica = politica;

  // "Codigo" field.
  String? _codigo;
  String get codigo => _codigo ?? '';
  set codigo(String? val) => _codigo = val;

  bool hasCodigo() => _codigo != null;

  // "DctoRequeridos" field.
  String? _dctoRequeridos;
  String get dctoRequeridos => _dctoRequeridos ?? '';
  set dctoRequeridos(String? val) => _dctoRequeridos = val;

  bool hasDctoRequeridos() => _dctoRequeridos != null;

  // "Nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  set nombre(String? val) => _nombre = val;

  bool hasNombre() => _nombre != null;

  // "Politica" field.
  String? _politica;
  String get politica => _politica ?? '';
  set politica(String? val) => _politica = val;

  bool hasPolitica() => _politica != null;

  static TypeRequestStruct fromMap(Map<String, dynamic> data) =>
      TypeRequestStruct(
        codigo: data['Codigo'] as String?,
        dctoRequeridos: data['DctoRequeridos'] as String?,
        nombre: data['Nombre'] as String?,
        politica: data['Politica'] as String?,
      );

  static TypeRequestStruct? maybeFromMap(dynamic data) => data is Map
      ? TypeRequestStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Codigo': _codigo,
        'DctoRequeridos': _dctoRequeridos,
        'Nombre': _nombre,
        'Politica': _politica,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Codigo': serializeParam(
          _codigo,
          ParamType.String,
        ),
        'DctoRequeridos': serializeParam(
          _dctoRequeridos,
          ParamType.String,
        ),
        'Nombre': serializeParam(
          _nombre,
          ParamType.String,
        ),
        'Politica': serializeParam(
          _politica,
          ParamType.String,
        ),
      }.withoutNulls;

  static TypeRequestStruct fromSerializableMap(Map<String, dynamic> data) =>
      TypeRequestStruct(
        codigo: deserializeParam(
          data['Codigo'],
          ParamType.String,
          false,
        ),
        dctoRequeridos: deserializeParam(
          data['DctoRequeridos'],
          ParamType.String,
          false,
        ),
        nombre: deserializeParam(
          data['Nombre'],
          ParamType.String,
          false,
        ),
        politica: deserializeParam(
          data['Politica'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TypeRequestStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TypeRequestStruct &&
        codigo == other.codigo &&
        dctoRequeridos == other.dctoRequeridos &&
        nombre == other.nombre &&
        politica == other.politica;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([codigo, dctoRequeridos, nombre, politica]);
}

TypeRequestStruct createTypeRequestStruct({
  String? codigo,
  String? dctoRequeridos,
  String? nombre,
  String? politica,
}) =>
    TypeRequestStruct(
      codigo: codigo,
      dctoRequeridos: dctoRequeridos,
      nombre: nombre,
      politica: politica,
    );
