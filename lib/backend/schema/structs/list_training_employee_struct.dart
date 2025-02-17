// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ListTrainingEmployeeStruct extends BaseStruct {
  ListTrainingEmployeeStruct({
    String? codigo,
    String? curso,
    String? descripcion,
    String? link,
    String? tema,
    String? codigoEmpleado,
  })  : _codigo = codigo,
        _curso = curso,
        _descripcion = descripcion,
        _link = link,
        _tema = tema,
        _codigoEmpleado = codigoEmpleado;

  // "Codigo" field.
  String? _codigo;
  String get codigo => _codigo ?? '';
  set codigo(String? val) => _codigo = val;

  bool hasCodigo() => _codigo != null;

  // "Curso" field.
  String? _curso;
  String get curso => _curso ?? '';
  set curso(String? val) => _curso = val;

  bool hasCurso() => _curso != null;

  // "Descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  set descripcion(String? val) => _descripcion = val;

  bool hasDescripcion() => _descripcion != null;

  // "Link" field.
  String? _link;
  String get link => _link ?? '';
  set link(String? val) => _link = val;

  bool hasLink() => _link != null;

  // "Tema" field.
  String? _tema;
  String get tema => _tema ?? '';
  set tema(String? val) => _tema = val;

  bool hasTema() => _tema != null;

  // "CodigoEmpleado" field.
  String? _codigoEmpleado;
  String get codigoEmpleado => _codigoEmpleado ?? '';
  set codigoEmpleado(String? val) => _codigoEmpleado = val;

  bool hasCodigoEmpleado() => _codigoEmpleado != null;

  static ListTrainingEmployeeStruct fromMap(Map<String, dynamic> data) =>
      ListTrainingEmployeeStruct(
        codigo: data['Codigo'] as String?,
        curso: data['Curso'] as String?,
        descripcion: data['Descripcion'] as String?,
        link: data['Link'] as String?,
        tema: data['Tema'] as String?,
        codigoEmpleado: data['CodigoEmpleado'] as String?,
      );

  static ListTrainingEmployeeStruct? maybeFromMap(dynamic data) => data is Map
      ? ListTrainingEmployeeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Codigo': _codigo,
        'Curso': _curso,
        'Descripcion': _descripcion,
        'Link': _link,
        'Tema': _tema,
        'CodigoEmpleado': _codigoEmpleado,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Codigo': serializeParam(
          _codigo,
          ParamType.String,
        ),
        'Curso': serializeParam(
          _curso,
          ParamType.String,
        ),
        'Descripcion': serializeParam(
          _descripcion,
          ParamType.String,
        ),
        'Link': serializeParam(
          _link,
          ParamType.String,
        ),
        'Tema': serializeParam(
          _tema,
          ParamType.String,
        ),
        'CodigoEmpleado': serializeParam(
          _codigoEmpleado,
          ParamType.String,
        ),
      }.withoutNulls;

  static ListTrainingEmployeeStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ListTrainingEmployeeStruct(
        codigo: deserializeParam(
          data['Codigo'],
          ParamType.String,
          false,
        ),
        curso: deserializeParam(
          data['Curso'],
          ParamType.String,
          false,
        ),
        descripcion: deserializeParam(
          data['Descripcion'],
          ParamType.String,
          false,
        ),
        link: deserializeParam(
          data['Link'],
          ParamType.String,
          false,
        ),
        tema: deserializeParam(
          data['Tema'],
          ParamType.String,
          false,
        ),
        codigoEmpleado: deserializeParam(
          data['CodigoEmpleado'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ListTrainingEmployeeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ListTrainingEmployeeStruct &&
        codigo == other.codigo &&
        curso == other.curso &&
        descripcion == other.descripcion &&
        link == other.link &&
        tema == other.tema &&
        codigoEmpleado == other.codigoEmpleado;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([codigo, curso, descripcion, link, tema, codigoEmpleado]);
}

ListTrainingEmployeeStruct createListTrainingEmployeeStruct({
  String? codigo,
  String? curso,
  String? descripcion,
  String? link,
  String? tema,
  String? codigoEmpleado,
}) =>
    ListTrainingEmployeeStruct(
      codigo: codigo,
      curso: curso,
      descripcion: descripcion,
      link: link,
      tema: tema,
      codigoEmpleado: codigoEmpleado,
    );
