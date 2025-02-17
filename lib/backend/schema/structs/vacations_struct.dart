// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VacationsStruct extends BaseStruct {
  VacationsStruct({
    int? daysTaken,
    int? daysPending,
  })  : _daysTaken = daysTaken,
        _daysPending = daysPending;

  // "daysTaken" field.
  int? _daysTaken;
  int get daysTaken => _daysTaken ?? 0;
  set daysTaken(int? val) => _daysTaken = val;

  void incrementDaysTaken(int amount) => daysTaken = daysTaken + amount;

  bool hasDaysTaken() => _daysTaken != null;

  // "daysPending" field.
  int? _daysPending;
  int get daysPending => _daysPending ?? 0;
  set daysPending(int? val) => _daysPending = val;

  void incrementDaysPending(int amount) => daysPending = daysPending + amount;

  bool hasDaysPending() => _daysPending != null;

  static VacationsStruct fromMap(Map<String, dynamic> data) => VacationsStruct(
        daysTaken: castToType<int>(data['daysTaken']),
        daysPending: castToType<int>(data['daysPending']),
      );

  static VacationsStruct? maybeFromMap(dynamic data) => data is Map
      ? VacationsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'daysTaken': _daysTaken,
        'daysPending': _daysPending,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'daysTaken': serializeParam(
          _daysTaken,
          ParamType.int,
        ),
        'daysPending': serializeParam(
          _daysPending,
          ParamType.int,
        ),
      }.withoutNulls;

  static VacationsStruct fromSerializableMap(Map<String, dynamic> data) =>
      VacationsStruct(
        daysTaken: deserializeParam(
          data['daysTaken'],
          ParamType.int,
          false,
        ),
        daysPending: deserializeParam(
          data['daysPending'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'VacationsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is VacationsStruct &&
        daysTaken == other.daysTaken &&
        daysPending == other.daysPending;
  }

  @override
  int get hashCode => const ListEquality().hash([daysTaken, daysPending]);
}

VacationsStruct createVacationsStruct({
  int? daysTaken,
  int? daysPending,
}) =>
    VacationsStruct(
      daysTaken: daysTaken,
      daysPending: daysPending,
    );
