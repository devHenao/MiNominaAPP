// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EmployeeStruct extends BaseStruct {
  EmployeeStruct({
    String? codigo,
    String? codtipcont,
    String? codcargo,
    String? nombre,
    String? nombre2,
    String? fecing,
    String? apellido,
    String? apellido2,
    String? cedula,
    String? direccion,
    String? cdciiu,
    String? celular,
    String? email,
    String? fecnac,
    String? sexo,
    String? edociv,
    int? nrohijos,
    String? bancoEmp,
    bool? tipocuenta,
    String? ctacte,
    String? codfondo,
    String? jubilacion,
    String? salud,
    String? atep,
    String? aportev,
    String? afp,
    String? codcaja,
    String? depend,
    String? nombreCiudad,
    String? nombreBanco,
    String? nombreCesantia,
    String? nombrePension,
    String? nombreSalud,
    String? nombreArl,
    String? nombreAporteVoluntario,
    String? nombreAfc,
    String? nombreCajaComp,
    int? edad,
    String? txtTipoCuenta,
  })  : _codigo = codigo,
        _codtipcont = codtipcont,
        _codcargo = codcargo,
        _nombre = nombre,
        _nombre2 = nombre2,
        _fecing = fecing,
        _apellido = apellido,
        _apellido2 = apellido2,
        _cedula = cedula,
        _direccion = direccion,
        _cdciiu = cdciiu,
        _celular = celular,
        _email = email,
        _fecnac = fecnac,
        _sexo = sexo,
        _edociv = edociv,
        _nrohijos = nrohijos,
        _bancoEmp = bancoEmp,
        _tipocuenta = tipocuenta,
        _ctacte = ctacte,
        _codfondo = codfondo,
        _jubilacion = jubilacion,
        _salud = salud,
        _atep = atep,
        _aportev = aportev,
        _afp = afp,
        _codcaja = codcaja,
        _depend = depend,
        _nombreCiudad = nombreCiudad,
        _nombreBanco = nombreBanco,
        _nombreCesantia = nombreCesantia,
        _nombrePension = nombrePension,
        _nombreSalud = nombreSalud,
        _nombreArl = nombreArl,
        _nombreAporteVoluntario = nombreAporteVoluntario,
        _nombreAfc = nombreAfc,
        _nombreCajaComp = nombreCajaComp,
        _edad = edad,
        _txtTipoCuenta = txtTipoCuenta;

  // "CODIGO" field.
  String? _codigo;
  String get codigo => _codigo ?? '';
  set codigo(String? val) => _codigo = val;

  bool hasCodigo() => _codigo != null;

  // "CODTIPCONT" field.
  String? _codtipcont;
  String get codtipcont => _codtipcont ?? '';
  set codtipcont(String? val) => _codtipcont = val;

  bool hasCodtipcont() => _codtipcont != null;

  // "CODCARGO" field.
  String? _codcargo;
  String get codcargo => _codcargo ?? '';
  set codcargo(String? val) => _codcargo = val;

  bool hasCodcargo() => _codcargo != null;

  // "NOMBRE" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  set nombre(String? val) => _nombre = val;

  bool hasNombre() => _nombre != null;

  // "NOMBRE2" field.
  String? _nombre2;
  String get nombre2 => _nombre2 ?? '';
  set nombre2(String? val) => _nombre2 = val;

  bool hasNombre2() => _nombre2 != null;

  // "FECING" field.
  String? _fecing;
  String get fecing => _fecing ?? '';
  set fecing(String? val) => _fecing = val;

  bool hasFecing() => _fecing != null;

  // "APELLIDO" field.
  String? _apellido;
  String get apellido => _apellido ?? '';
  set apellido(String? val) => _apellido = val;

  bool hasApellido() => _apellido != null;

  // "APELLIDO2" field.
  String? _apellido2;
  String get apellido2 => _apellido2 ?? '';
  set apellido2(String? val) => _apellido2 = val;

  bool hasApellido2() => _apellido2 != null;

  // "CEDULA" field.
  String? _cedula;
  String get cedula => _cedula ?? '';
  set cedula(String? val) => _cedula = val;

  bool hasCedula() => _cedula != null;

  // "DIRECCION" field.
  String? _direccion;
  String get direccion => _direccion ?? '';
  set direccion(String? val) => _direccion = val;

  bool hasDireccion() => _direccion != null;

  // "CDCIIU" field.
  String? _cdciiu;
  String get cdciiu => _cdciiu ?? '';
  set cdciiu(String? val) => _cdciiu = val;

  bool hasCdciiu() => _cdciiu != null;

  // "CELULAR" field.
  String? _celular;
  String get celular => _celular ?? '';
  set celular(String? val) => _celular = val;

  bool hasCelular() => _celular != null;

  // "EMAIL" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "FECNAC" field.
  String? _fecnac;
  String get fecnac => _fecnac ?? '';
  set fecnac(String? val) => _fecnac = val;

  bool hasFecnac() => _fecnac != null;

  // "SEXO" field.
  String? _sexo;
  String get sexo => _sexo ?? '';
  set sexo(String? val) => _sexo = val;

  bool hasSexo() => _sexo != null;

  // "EDOCIV" field.
  String? _edociv;
  String get edociv => _edociv ?? '';
  set edociv(String? val) => _edociv = val;

  bool hasEdociv() => _edociv != null;

  // "NROHIJOS" field.
  int? _nrohijos;
  int get nrohijos => _nrohijos ?? 0;
  set nrohijos(int? val) => _nrohijos = val;

  void incrementNrohijos(int amount) => nrohijos = nrohijos + amount;

  bool hasNrohijos() => _nrohijos != null;

  // "BancoEmp" field.
  String? _bancoEmp;
  String get bancoEmp => _bancoEmp ?? '';
  set bancoEmp(String? val) => _bancoEmp = val;

  bool hasBancoEmp() => _bancoEmp != null;

  // "TIPOCUENTA" field.
  bool? _tipocuenta;
  bool get tipocuenta => _tipocuenta ?? false;
  set tipocuenta(bool? val) => _tipocuenta = val;

  bool hasTipocuenta() => _tipocuenta != null;

  // "CTACTE" field.
  String? _ctacte;
  String get ctacte => _ctacte ?? '';
  set ctacte(String? val) => _ctacte = val;

  bool hasCtacte() => _ctacte != null;

  // "CODFONDO" field.
  String? _codfondo;
  String get codfondo => _codfondo ?? '';
  set codfondo(String? val) => _codfondo = val;

  bool hasCodfondo() => _codfondo != null;

  // "JUBILACION" field.
  String? _jubilacion;
  String get jubilacion => _jubilacion ?? '';
  set jubilacion(String? val) => _jubilacion = val;

  bool hasJubilacion() => _jubilacion != null;

  // "SALUD" field.
  String? _salud;
  String get salud => _salud ?? '';
  set salud(String? val) => _salud = val;

  bool hasSalud() => _salud != null;

  // "ATEP" field.
  String? _atep;
  String get atep => _atep ?? '';
  set atep(String? val) => _atep = val;

  bool hasAtep() => _atep != null;

  // "APORTEV" field.
  String? _aportev;
  String get aportev => _aportev ?? '';
  set aportev(String? val) => _aportev = val;

  bool hasAportev() => _aportev != null;

  // "AFP" field.
  String? _afp;
  String get afp => _afp ?? '';
  set afp(String? val) => _afp = val;

  bool hasAfp() => _afp != null;

  // "CODCAJA" field.
  String? _codcaja;
  String get codcaja => _codcaja ?? '';
  set codcaja(String? val) => _codcaja = val;

  bool hasCodcaja() => _codcaja != null;

  // "DEPEND" field.
  String? _depend;
  String get depend => _depend ?? '';
  set depend(String? val) => _depend = val;

  bool hasDepend() => _depend != null;

  // "nombreCiudad" field.
  String? _nombreCiudad;
  String get nombreCiudad => _nombreCiudad ?? '';
  set nombreCiudad(String? val) => _nombreCiudad = val;

  bool hasNombreCiudad() => _nombreCiudad != null;

  // "nombreBanco" field.
  String? _nombreBanco;
  String get nombreBanco => _nombreBanco ?? '';
  set nombreBanco(String? val) => _nombreBanco = val;

  bool hasNombreBanco() => _nombreBanco != null;

  // "nombreCesantia" field.
  String? _nombreCesantia;
  String get nombreCesantia => _nombreCesantia ?? '';
  set nombreCesantia(String? val) => _nombreCesantia = val;

  bool hasNombreCesantia() => _nombreCesantia != null;

  // "nombrePension" field.
  String? _nombrePension;
  String get nombrePension => _nombrePension ?? '';
  set nombrePension(String? val) => _nombrePension = val;

  bool hasNombrePension() => _nombrePension != null;

  // "nombreSalud" field.
  String? _nombreSalud;
  String get nombreSalud => _nombreSalud ?? '';
  set nombreSalud(String? val) => _nombreSalud = val;

  bool hasNombreSalud() => _nombreSalud != null;

  // "nombreArl" field.
  String? _nombreArl;
  String get nombreArl => _nombreArl ?? '';
  set nombreArl(String? val) => _nombreArl = val;

  bool hasNombreArl() => _nombreArl != null;

  // "nombreAporteVoluntario" field.
  String? _nombreAporteVoluntario;
  String get nombreAporteVoluntario => _nombreAporteVoluntario ?? '';
  set nombreAporteVoluntario(String? val) => _nombreAporteVoluntario = val;

  bool hasNombreAporteVoluntario() => _nombreAporteVoluntario != null;

  // "nombreAfc" field.
  String? _nombreAfc;
  String get nombreAfc => _nombreAfc ?? '';
  set nombreAfc(String? val) => _nombreAfc = val;

  bool hasNombreAfc() => _nombreAfc != null;

  // "nombreCajaComp" field.
  String? _nombreCajaComp;
  String get nombreCajaComp => _nombreCajaComp ?? '';
  set nombreCajaComp(String? val) => _nombreCajaComp = val;

  bool hasNombreCajaComp() => _nombreCajaComp != null;

  // "edad" field.
  int? _edad;
  int get edad => _edad ?? 0;
  set edad(int? val) => _edad = val;

  void incrementEdad(int amount) => edad = edad + amount;

  bool hasEdad() => _edad != null;

  // "txtTipoCuenta" field.
  String? _txtTipoCuenta;
  String get txtTipoCuenta => _txtTipoCuenta ?? '';
  set txtTipoCuenta(String? val) => _txtTipoCuenta = val;

  bool hasTxtTipoCuenta() => _txtTipoCuenta != null;

  static EmployeeStruct fromMap(Map<String, dynamic> data) => EmployeeStruct(
        codigo: data['CODIGO'] as String?,
        codtipcont: data['CODTIPCONT'] as String?,
        codcargo: data['CODCARGO'] as String?,
        nombre: data['NOMBRE'] as String?,
        nombre2: data['NOMBRE2'] as String?,
        fecing: data['FECING'] as String?,
        apellido: data['APELLIDO'] as String?,
        apellido2: data['APELLIDO2'] as String?,
        cedula: data['CEDULA'] as String?,
        direccion: data['DIRECCION'] as String?,
        cdciiu: data['CDCIIU'] as String?,
        celular: data['CELULAR'] as String?,
        email: data['EMAIL'] as String?,
        fecnac: data['FECNAC'] as String?,
        sexo: data['SEXO'] as String?,
        edociv: data['EDOCIV'] as String?,
        nrohijos: castToType<int>(data['NROHIJOS']),
        bancoEmp: data['BancoEmp'] as String?,
        tipocuenta: data['TIPOCUENTA'] as bool?,
        ctacte: data['CTACTE'] as String?,
        codfondo: data['CODFONDO'] as String?,
        jubilacion: data['JUBILACION'] as String?,
        salud: data['SALUD'] as String?,
        atep: data['ATEP'] as String?,
        aportev: data['APORTEV'] as String?,
        afp: data['AFP'] as String?,
        codcaja: data['CODCAJA'] as String?,
        depend: data['DEPEND'] as String?,
        nombreCiudad: data['nombreCiudad'] as String?,
        nombreBanco: data['nombreBanco'] as String?,
        nombreCesantia: data['nombreCesantia'] as String?,
        nombrePension: data['nombrePension'] as String?,
        nombreSalud: data['nombreSalud'] as String?,
        nombreArl: data['nombreArl'] as String?,
        nombreAporteVoluntario: data['nombreAporteVoluntario'] as String?,
        nombreAfc: data['nombreAfc'] as String?,
        nombreCajaComp: data['nombreCajaComp'] as String?,
        edad: castToType<int>(data['edad']),
        txtTipoCuenta: data['txtTipoCuenta'] as String?,
      );

  static EmployeeStruct? maybeFromMap(dynamic data) =>
      data is Map ? EmployeeStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'CODIGO': _codigo,
        'CODTIPCONT': _codtipcont,
        'CODCARGO': _codcargo,
        'NOMBRE': _nombre,
        'NOMBRE2': _nombre2,
        'FECING': _fecing,
        'APELLIDO': _apellido,
        'APELLIDO2': _apellido2,
        'CEDULA': _cedula,
        'DIRECCION': _direccion,
        'CDCIIU': _cdciiu,
        'CELULAR': _celular,
        'EMAIL': _email,
        'FECNAC': _fecnac,
        'SEXO': _sexo,
        'EDOCIV': _edociv,
        'NROHIJOS': _nrohijos,
        'BancoEmp': _bancoEmp,
        'TIPOCUENTA': _tipocuenta,
        'CTACTE': _ctacte,
        'CODFONDO': _codfondo,
        'JUBILACION': _jubilacion,
        'SALUD': _salud,
        'ATEP': _atep,
        'APORTEV': _aportev,
        'AFP': _afp,
        'CODCAJA': _codcaja,
        'DEPEND': _depend,
        'nombreCiudad': _nombreCiudad,
        'nombreBanco': _nombreBanco,
        'nombreCesantia': _nombreCesantia,
        'nombrePension': _nombrePension,
        'nombreSalud': _nombreSalud,
        'nombreArl': _nombreArl,
        'nombreAporteVoluntario': _nombreAporteVoluntario,
        'nombreAfc': _nombreAfc,
        'nombreCajaComp': _nombreCajaComp,
        'edad': _edad,
        'txtTipoCuenta': _txtTipoCuenta,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'CODIGO': serializeParam(
          _codigo,
          ParamType.String,
        ),
        'CODTIPCONT': serializeParam(
          _codtipcont,
          ParamType.String,
        ),
        'CODCARGO': serializeParam(
          _codcargo,
          ParamType.String,
        ),
        'NOMBRE': serializeParam(
          _nombre,
          ParamType.String,
        ),
        'NOMBRE2': serializeParam(
          _nombre2,
          ParamType.String,
        ),
        'FECING': serializeParam(
          _fecing,
          ParamType.String,
        ),
        'APELLIDO': serializeParam(
          _apellido,
          ParamType.String,
        ),
        'APELLIDO2': serializeParam(
          _apellido2,
          ParamType.String,
        ),
        'CEDULA': serializeParam(
          _cedula,
          ParamType.String,
        ),
        'DIRECCION': serializeParam(
          _direccion,
          ParamType.String,
        ),
        'CDCIIU': serializeParam(
          _cdciiu,
          ParamType.String,
        ),
        'CELULAR': serializeParam(
          _celular,
          ParamType.String,
        ),
        'EMAIL': serializeParam(
          _email,
          ParamType.String,
        ),
        'FECNAC': serializeParam(
          _fecnac,
          ParamType.String,
        ),
        'SEXO': serializeParam(
          _sexo,
          ParamType.String,
        ),
        'EDOCIV': serializeParam(
          _edociv,
          ParamType.String,
        ),
        'NROHIJOS': serializeParam(
          _nrohijos,
          ParamType.int,
        ),
        'BancoEmp': serializeParam(
          _bancoEmp,
          ParamType.String,
        ),
        'TIPOCUENTA': serializeParam(
          _tipocuenta,
          ParamType.bool,
        ),
        'CTACTE': serializeParam(
          _ctacte,
          ParamType.String,
        ),
        'CODFONDO': serializeParam(
          _codfondo,
          ParamType.String,
        ),
        'JUBILACION': serializeParam(
          _jubilacion,
          ParamType.String,
        ),
        'SALUD': serializeParam(
          _salud,
          ParamType.String,
        ),
        'ATEP': serializeParam(
          _atep,
          ParamType.String,
        ),
        'APORTEV': serializeParam(
          _aportev,
          ParamType.String,
        ),
        'AFP': serializeParam(
          _afp,
          ParamType.String,
        ),
        'CODCAJA': serializeParam(
          _codcaja,
          ParamType.String,
        ),
        'DEPEND': serializeParam(
          _depend,
          ParamType.String,
        ),
        'nombreCiudad': serializeParam(
          _nombreCiudad,
          ParamType.String,
        ),
        'nombreBanco': serializeParam(
          _nombreBanco,
          ParamType.String,
        ),
        'nombreCesantia': serializeParam(
          _nombreCesantia,
          ParamType.String,
        ),
        'nombrePension': serializeParam(
          _nombrePension,
          ParamType.String,
        ),
        'nombreSalud': serializeParam(
          _nombreSalud,
          ParamType.String,
        ),
        'nombreArl': serializeParam(
          _nombreArl,
          ParamType.String,
        ),
        'nombreAporteVoluntario': serializeParam(
          _nombreAporteVoluntario,
          ParamType.String,
        ),
        'nombreAfc': serializeParam(
          _nombreAfc,
          ParamType.String,
        ),
        'nombreCajaComp': serializeParam(
          _nombreCajaComp,
          ParamType.String,
        ),
        'edad': serializeParam(
          _edad,
          ParamType.int,
        ),
        'txtTipoCuenta': serializeParam(
          _txtTipoCuenta,
          ParamType.String,
        ),
      }.withoutNulls;

  static EmployeeStruct fromSerializableMap(Map<String, dynamic> data) =>
      EmployeeStruct(
        codigo: deserializeParam(
          data['CODIGO'],
          ParamType.String,
          false,
        ),
        codtipcont: deserializeParam(
          data['CODTIPCONT'],
          ParamType.String,
          false,
        ),
        codcargo: deserializeParam(
          data['CODCARGO'],
          ParamType.String,
          false,
        ),
        nombre: deserializeParam(
          data['NOMBRE'],
          ParamType.String,
          false,
        ),
        nombre2: deserializeParam(
          data['NOMBRE2'],
          ParamType.String,
          false,
        ),
        fecing: deserializeParam(
          data['FECING'],
          ParamType.String,
          false,
        ),
        apellido: deserializeParam(
          data['APELLIDO'],
          ParamType.String,
          false,
        ),
        apellido2: deserializeParam(
          data['APELLIDO2'],
          ParamType.String,
          false,
        ),
        cedula: deserializeParam(
          data['CEDULA'],
          ParamType.String,
          false,
        ),
        direccion: deserializeParam(
          data['DIRECCION'],
          ParamType.String,
          false,
        ),
        cdciiu: deserializeParam(
          data['CDCIIU'],
          ParamType.String,
          false,
        ),
        celular: deserializeParam(
          data['CELULAR'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['EMAIL'],
          ParamType.String,
          false,
        ),
        fecnac: deserializeParam(
          data['FECNAC'],
          ParamType.String,
          false,
        ),
        sexo: deserializeParam(
          data['SEXO'],
          ParamType.String,
          false,
        ),
        edociv: deserializeParam(
          data['EDOCIV'],
          ParamType.String,
          false,
        ),
        nrohijos: deserializeParam(
          data['NROHIJOS'],
          ParamType.int,
          false,
        ),
        bancoEmp: deserializeParam(
          data['BancoEmp'],
          ParamType.String,
          false,
        ),
        tipocuenta: deserializeParam(
          data['TIPOCUENTA'],
          ParamType.bool,
          false,
        ),
        ctacte: deserializeParam(
          data['CTACTE'],
          ParamType.String,
          false,
        ),
        codfondo: deserializeParam(
          data['CODFONDO'],
          ParamType.String,
          false,
        ),
        jubilacion: deserializeParam(
          data['JUBILACION'],
          ParamType.String,
          false,
        ),
        salud: deserializeParam(
          data['SALUD'],
          ParamType.String,
          false,
        ),
        atep: deserializeParam(
          data['ATEP'],
          ParamType.String,
          false,
        ),
        aportev: deserializeParam(
          data['APORTEV'],
          ParamType.String,
          false,
        ),
        afp: deserializeParam(
          data['AFP'],
          ParamType.String,
          false,
        ),
        codcaja: deserializeParam(
          data['CODCAJA'],
          ParamType.String,
          false,
        ),
        depend: deserializeParam(
          data['DEPEND'],
          ParamType.String,
          false,
        ),
        nombreCiudad: deserializeParam(
          data['nombreCiudad'],
          ParamType.String,
          false,
        ),
        nombreBanco: deserializeParam(
          data['nombreBanco'],
          ParamType.String,
          false,
        ),
        nombreCesantia: deserializeParam(
          data['nombreCesantia'],
          ParamType.String,
          false,
        ),
        nombrePension: deserializeParam(
          data['nombrePension'],
          ParamType.String,
          false,
        ),
        nombreSalud: deserializeParam(
          data['nombreSalud'],
          ParamType.String,
          false,
        ),
        nombreArl: deserializeParam(
          data['nombreArl'],
          ParamType.String,
          false,
        ),
        nombreAporteVoluntario: deserializeParam(
          data['nombreAporteVoluntario'],
          ParamType.String,
          false,
        ),
        nombreAfc: deserializeParam(
          data['nombreAfc'],
          ParamType.String,
          false,
        ),
        nombreCajaComp: deserializeParam(
          data['nombreCajaComp'],
          ParamType.String,
          false,
        ),
        edad: deserializeParam(
          data['edad'],
          ParamType.int,
          false,
        ),
        txtTipoCuenta: deserializeParam(
          data['txtTipoCuenta'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'EmployeeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is EmployeeStruct &&
        codigo == other.codigo &&
        codtipcont == other.codtipcont &&
        codcargo == other.codcargo &&
        nombre == other.nombre &&
        nombre2 == other.nombre2 &&
        fecing == other.fecing &&
        apellido == other.apellido &&
        apellido2 == other.apellido2 &&
        cedula == other.cedula &&
        direccion == other.direccion &&
        cdciiu == other.cdciiu &&
        celular == other.celular &&
        email == other.email &&
        fecnac == other.fecnac &&
        sexo == other.sexo &&
        edociv == other.edociv &&
        nrohijos == other.nrohijos &&
        bancoEmp == other.bancoEmp &&
        tipocuenta == other.tipocuenta &&
        ctacte == other.ctacte &&
        codfondo == other.codfondo &&
        jubilacion == other.jubilacion &&
        salud == other.salud &&
        atep == other.atep &&
        aportev == other.aportev &&
        afp == other.afp &&
        codcaja == other.codcaja &&
        depend == other.depend &&
        nombreCiudad == other.nombreCiudad &&
        nombreBanco == other.nombreBanco &&
        nombreCesantia == other.nombreCesantia &&
        nombrePension == other.nombrePension &&
        nombreSalud == other.nombreSalud &&
        nombreArl == other.nombreArl &&
        nombreAporteVoluntario == other.nombreAporteVoluntario &&
        nombreAfc == other.nombreAfc &&
        nombreCajaComp == other.nombreCajaComp &&
        edad == other.edad &&
        txtTipoCuenta == other.txtTipoCuenta;
  }

  @override
  int get hashCode => const ListEquality().hash([
        codigo,
        codtipcont,
        codcargo,
        nombre,
        nombre2,
        fecing,
        apellido,
        apellido2,
        cedula,
        direccion,
        cdciiu,
        celular,
        email,
        fecnac,
        sexo,
        edociv,
        nrohijos,
        bancoEmp,
        tipocuenta,
        ctacte,
        codfondo,
        jubilacion,
        salud,
        atep,
        aportev,
        afp,
        codcaja,
        depend,
        nombreCiudad,
        nombreBanco,
        nombreCesantia,
        nombrePension,
        nombreSalud,
        nombreArl,
        nombreAporteVoluntario,
        nombreAfc,
        nombreCajaComp,
        edad,
        txtTipoCuenta
      ]);
}

EmployeeStruct createEmployeeStruct({
  String? codigo,
  String? codtipcont,
  String? codcargo,
  String? nombre,
  String? nombre2,
  String? fecing,
  String? apellido,
  String? apellido2,
  String? cedula,
  String? direccion,
  String? cdciiu,
  String? celular,
  String? email,
  String? fecnac,
  String? sexo,
  String? edociv,
  int? nrohijos,
  String? bancoEmp,
  bool? tipocuenta,
  String? ctacte,
  String? codfondo,
  String? jubilacion,
  String? salud,
  String? atep,
  String? aportev,
  String? afp,
  String? codcaja,
  String? depend,
  String? nombreCiudad,
  String? nombreBanco,
  String? nombreCesantia,
  String? nombrePension,
  String? nombreSalud,
  String? nombreArl,
  String? nombreAporteVoluntario,
  String? nombreAfc,
  String? nombreCajaComp,
  int? edad,
  String? txtTipoCuenta,
}) =>
    EmployeeStruct(
      codigo: codigo,
      codtipcont: codtipcont,
      codcargo: codcargo,
      nombre: nombre,
      nombre2: nombre2,
      fecing: fecing,
      apellido: apellido,
      apellido2: apellido2,
      cedula: cedula,
      direccion: direccion,
      cdciiu: cdciiu,
      celular: celular,
      email: email,
      fecnac: fecnac,
      sexo: sexo,
      edociv: edociv,
      nrohijos: nrohijos,
      bancoEmp: bancoEmp,
      tipocuenta: tipocuenta,
      ctacte: ctacte,
      codfondo: codfondo,
      jubilacion: jubilacion,
      salud: salud,
      atep: atep,
      aportev: aportev,
      afp: afp,
      codcaja: codcaja,
      depend: depend,
      nombreCiudad: nombreCiudad,
      nombreBanco: nombreBanco,
      nombreCesantia: nombreCesantia,
      nombrePension: nombrePension,
      nombreSalud: nombreSalud,
      nombreArl: nombreArl,
      nombreAporteVoluntario: nombreAporteVoluntario,
      nombreAfc: nombreAfc,
      nombreCajaComp: nombreCajaComp,
      edad: edad,
      txtTipoCuenta: txtTipoCuenta,
    );
