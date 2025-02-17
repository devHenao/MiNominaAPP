// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LsDisabilitiesStruct extends BaseStruct {
  LsDisabilitiesStruct({
    String? tipnovedad,
    String? fecini,
    String? fecfin,
    double? vlrprom,
    String? txtType,
    int? days,
    int? value,
  })  : _tipnovedad = tipnovedad,
        _fecini = fecini,
        _fecfin = fecfin,
        _vlrprom = vlrprom,
        _txtType = txtType,
        _days = days,
        _value = value;

  // "TIPNOVEDAD" field.
  String? _tipnovedad;
  String get tipnovedad => _tipnovedad ?? '';
  set tipnovedad(String? val) => _tipnovedad = val;

  bool hasTipnovedad() => _tipnovedad != null;

  // "FECINI" field.
  String? _fecini;
  String get fecini => _fecini ?? '';
  set fecini(String? val) => _fecini = val;

  bool hasFecini() => _fecini != null;

  // "FECFIN" field.
  String? _fecfin;
  String get fecfin => _fecfin ?? '';
  set fecfin(String? val) => _fecfin = val;

  bool hasFecfin() => _fecfin != null;

  // "VLRPROM" field.
  double? _vlrprom;
  double get vlrprom => _vlrprom ?? 0.0;
  set vlrprom(double? val) => _vlrprom = val;

  void incrementVlrprom(double amount) => vlrprom = vlrprom + amount;

  bool hasVlrprom() => _vlrprom != null;

  // "txtType" field.
  String? _txtType;
  String get txtType => _txtType ?? '';
  set txtType(String? val) => _txtType = val;

  bool hasTxtType() => _txtType != null;

  // "days" field.
  int? _days;
  int get days => _days ?? 0;
  set days(int? val) => _days = val;

  void incrementDays(int amount) => days = days + amount;

  bool hasDays() => _days != null;

  // "value" field.
  int? _value;
  int get value => _value ?? 0;
  set value(int? val) => _value = val;

  void incrementValue(int amount) => value = value + amount;

  bool hasValue() => _value != null;

  static LsDisabilitiesStruct fromMap(Map<String, dynamic> data) =>
      LsDisabilitiesStruct(
        tipnovedad: data['TIPNOVEDAD'] as String?,
        fecini: data['FECINI'] as String?,
        fecfin: data['FECFIN'] as String?,
        vlrprom: castToType<double>(data['VLRPROM']),
        txtType: data['txtType'] as String?,
        days: castToType<int>(data['days']),
        value: castToType<int>(data['value']),
      );

  static LsDisabilitiesStruct? maybeFromMap(dynamic data) => data is Map
      ? LsDisabilitiesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'TIPNOVEDAD': _tipnovedad,
        'FECINI': _fecini,
        'FECFIN': _fecfin,
        'VLRPROM': _vlrprom,
        'txtType': _txtType,
        'days': _days,
        'value': _value,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'TIPNOVEDAD': serializeParam(
          _tipnovedad,
          ParamType.String,
        ),
        'FECINI': serializeParam(
          _fecini,
          ParamType.String,
        ),
        'FECFIN': serializeParam(
          _fecfin,
          ParamType.String,
        ),
        'VLRPROM': serializeParam(
          _vlrprom,
          ParamType.double,
        ),
        'txtType': serializeParam(
          _txtType,
          ParamType.String,
        ),
        'days': serializeParam(
          _days,
          ParamType.int,
        ),
        'value': serializeParam(
          _value,
          ParamType.int,
        ),
      }.withoutNulls;

  static LsDisabilitiesStruct fromSerializableMap(Map<String, dynamic> data) =>
      LsDisabilitiesStruct(
        tipnovedad: deserializeParam(
          data['TIPNOVEDAD'],
          ParamType.String,
          false,
        ),
        fecini: deserializeParam(
          data['FECINI'],
          ParamType.String,
          false,
        ),
        fecfin: deserializeParam(
          data['FECFIN'],
          ParamType.String,
          false,
        ),
        vlrprom: deserializeParam(
          data['VLRPROM'],
          ParamType.double,
          false,
        ),
        txtType: deserializeParam(
          data['txtType'],
          ParamType.String,
          false,
        ),
        days: deserializeParam(
          data['days'],
          ParamType.int,
          false,
        ),
        value: deserializeParam(
          data['value'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'LsDisabilitiesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LsDisabilitiesStruct &&
        tipnovedad == other.tipnovedad &&
        fecini == other.fecini &&
        fecfin == other.fecfin &&
        vlrprom == other.vlrprom &&
        txtType == other.txtType &&
        days == other.days &&
        value == other.value;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([tipnovedad, fecini, fecfin, vlrprom, txtType, days, value]);
}

LsDisabilitiesStruct createLsDisabilitiesStruct({
  String? tipnovedad,
  String? fecini,
  String? fecfin,
  double? vlrprom,
  String? txtType,
  int? days,
  int? value,
}) =>
    LsDisabilitiesStruct(
      tipnovedad: tipnovedad,
      fecini: fecini,
      fecfin: fecfin,
      vlrprom: vlrprom,
      txtType: txtType,
      days: days,
      value: value,
    );
