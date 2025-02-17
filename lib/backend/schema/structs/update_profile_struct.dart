// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UpdateProfileStruct extends BaseStruct {
  UpdateProfileStruct({
    String? direccion,
    String? celular,
    String? cdCiiu,
    String? sexo,
    String? edociv,
    String? nroHijos,
  })  : _direccion = direccion,
        _celular = celular,
        _cdCiiu = cdCiiu,
        _sexo = sexo,
        _edociv = edociv,
        _nroHijos = nroHijos;

  // "direccion" field.
  String? _direccion;
  String get direccion => _direccion ?? '';
  set direccion(String? val) => _direccion = val;

  bool hasDireccion() => _direccion != null;

  // "celular" field.
  String? _celular;
  String get celular => _celular ?? '';
  set celular(String? val) => _celular = val;

  bool hasCelular() => _celular != null;

  // "cdCiiu" field.
  String? _cdCiiu;
  String get cdCiiu => _cdCiiu ?? '';
  set cdCiiu(String? val) => _cdCiiu = val;

  bool hasCdCiiu() => _cdCiiu != null;

  // "sexo" field.
  String? _sexo;
  String get sexo => _sexo ?? '';
  set sexo(String? val) => _sexo = val;

  bool hasSexo() => _sexo != null;

  // "edociv" field.
  String? _edociv;
  String get edociv => _edociv ?? '';
  set edociv(String? val) => _edociv = val;

  bool hasEdociv() => _edociv != null;

  // "nroHijos" field.
  String? _nroHijos;
  String get nroHijos => _nroHijos ?? '';
  set nroHijos(String? val) => _nroHijos = val;

  bool hasNroHijos() => _nroHijos != null;

  static UpdateProfileStruct fromMap(Map<String, dynamic> data) =>
      UpdateProfileStruct(
        direccion: data['direccion'] as String?,
        celular: data['celular'] as String?,
        cdCiiu: data['cdCiiu'] as String?,
        sexo: data['sexo'] as String?,
        edociv: data['edociv'] as String?,
        nroHijos: data['nroHijos'] as String?,
      );

  static UpdateProfileStruct? maybeFromMap(dynamic data) => data is Map
      ? UpdateProfileStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'direccion': _direccion,
        'celular': _celular,
        'cdCiiu': _cdCiiu,
        'sexo': _sexo,
        'edociv': _edociv,
        'nroHijos': _nroHijos,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'direccion': serializeParam(
          _direccion,
          ParamType.String,
        ),
        'celular': serializeParam(
          _celular,
          ParamType.String,
        ),
        'cdCiiu': serializeParam(
          _cdCiiu,
          ParamType.String,
        ),
        'sexo': serializeParam(
          _sexo,
          ParamType.String,
        ),
        'edociv': serializeParam(
          _edociv,
          ParamType.String,
        ),
        'nroHijos': serializeParam(
          _nroHijos,
          ParamType.String,
        ),
      }.withoutNulls;

  static UpdateProfileStruct fromSerializableMap(Map<String, dynamic> data) =>
      UpdateProfileStruct(
        direccion: deserializeParam(
          data['direccion'],
          ParamType.String,
          false,
        ),
        celular: deserializeParam(
          data['celular'],
          ParamType.String,
          false,
        ),
        cdCiiu: deserializeParam(
          data['cdCiiu'],
          ParamType.String,
          false,
        ),
        sexo: deserializeParam(
          data['sexo'],
          ParamType.String,
          false,
        ),
        edociv: deserializeParam(
          data['edociv'],
          ParamType.String,
          false,
        ),
        nroHijos: deserializeParam(
          data['nroHijos'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UpdateProfileStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UpdateProfileStruct &&
        direccion == other.direccion &&
        celular == other.celular &&
        cdCiiu == other.cdCiiu &&
        sexo == other.sexo &&
        edociv == other.edociv &&
        nroHijos == other.nroHijos;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([direccion, celular, cdCiiu, sexo, edociv, nroHijos]);
}

UpdateProfileStruct createUpdateProfileStruct({
  String? direccion,
  String? celular,
  String? cdCiiu,
  String? sexo,
  String? edociv,
  String? nroHijos,
}) =>
    UpdateProfileStruct(
      direccion: direccion,
      celular: celular,
      cdCiiu: cdCiiu,
      sexo: sexo,
      edociv: edociv,
      nroHijos: nroHijos,
    );
