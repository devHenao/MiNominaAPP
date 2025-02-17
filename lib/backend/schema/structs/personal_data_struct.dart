// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PersonalDataStruct extends BaseStruct {
  PersonalDataStruct({
    String? codigo,
    String? descripcio,
  })  : _codigo = codigo,
        _descripcio = descripcio;

  // "Codigo" field.
  String? _codigo;
  String get codigo => _codigo ?? '';
  set codigo(String? val) => _codigo = val;

  bool hasCodigo() => _codigo != null;

  // "Descripcio" field.
  String? _descripcio;
  String get descripcio => _descripcio ?? '';
  set descripcio(String? val) => _descripcio = val;

  bool hasDescripcio() => _descripcio != null;

  static PersonalDataStruct fromMap(Map<String, dynamic> data) =>
      PersonalDataStruct(
        codigo: data['Codigo'] as String?,
        descripcio: data['Descripcio'] as String?,
      );

  static PersonalDataStruct? maybeFromMap(dynamic data) => data is Map
      ? PersonalDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Codigo': _codigo,
        'Descripcio': _descripcio,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Codigo': serializeParam(
          _codigo,
          ParamType.String,
        ),
        'Descripcio': serializeParam(
          _descripcio,
          ParamType.String,
        ),
      }.withoutNulls;

  static PersonalDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      PersonalDataStruct(
        codigo: deserializeParam(
          data['Codigo'],
          ParamType.String,
          false,
        ),
        descripcio: deserializeParam(
          data['Descripcio'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PersonalDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PersonalDataStruct &&
        codigo == other.codigo &&
        descripcio == other.descripcio;
  }

  @override
  int get hashCode => const ListEquality().hash([codigo, descripcio]);
}

PersonalDataStruct createPersonalDataStruct({
  String? codigo,
  String? descripcio,
}) =>
    PersonalDataStruct(
      codigo: codigo,
      descripcio: descripcio,
    );
