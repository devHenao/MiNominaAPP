// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ComunicationsStruct extends BaseStruct {
  ComunicationsStruct({
    List<ListCurrentStruct>? listCurrent,
    List<ListClosedStruct>? listClosed,
  })  : _listCurrent = listCurrent,
        _listClosed = listClosed;

  // "listCurrent" field.
  List<ListCurrentStruct>? _listCurrent;
  List<ListCurrentStruct> get listCurrent => _listCurrent ?? const [];
  set listCurrent(List<ListCurrentStruct>? val) => _listCurrent = val;

  void updateListCurrent(Function(List<ListCurrentStruct>) updateFn) {
    updateFn(_listCurrent ??= []);
  }

  bool hasListCurrent() => _listCurrent != null;

  // "listClosed" field.
  List<ListClosedStruct>? _listClosed;
  List<ListClosedStruct> get listClosed => _listClosed ?? const [];
  set listClosed(List<ListClosedStruct>? val) => _listClosed = val;

  void updateListClosed(Function(List<ListClosedStruct>) updateFn) {
    updateFn(_listClosed ??= []);
  }

  bool hasListClosed() => _listClosed != null;

  static ComunicationsStruct fromMap(Map<String, dynamic> data) =>
      ComunicationsStruct(
        listCurrent: getStructList(
          data['listCurrent'],
          ListCurrentStruct.fromMap,
        ),
        listClosed: getStructList(
          data['listClosed'],
          ListClosedStruct.fromMap,
        ),
      );

  static ComunicationsStruct? maybeFromMap(dynamic data) => data is Map
      ? ComunicationsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'listCurrent': _listCurrent?.map((e) => e.toMap()).toList(),
        'listClosed': _listClosed?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'listCurrent': serializeParam(
          _listCurrent,
          ParamType.DataStruct,
          isList: true,
        ),
        'listClosed': serializeParam(
          _listClosed,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static ComunicationsStruct fromSerializableMap(Map<String, dynamic> data) =>
      ComunicationsStruct(
        listCurrent: deserializeStructParam<ListCurrentStruct>(
          data['listCurrent'],
          ParamType.DataStruct,
          true,
          structBuilder: ListCurrentStruct.fromSerializableMap,
        ),
        listClosed: deserializeStructParam<ListClosedStruct>(
          data['listClosed'],
          ParamType.DataStruct,
          true,
          structBuilder: ListClosedStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ComunicationsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ComunicationsStruct &&
        listEquality.equals(listCurrent, other.listCurrent) &&
        listEquality.equals(listClosed, other.listClosed);
  }

  @override
  int get hashCode => const ListEquality().hash([listCurrent, listClosed]);
}

ComunicationsStruct createComunicationsStruct() => ComunicationsStruct();
