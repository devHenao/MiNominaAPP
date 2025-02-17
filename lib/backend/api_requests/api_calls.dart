import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Auth Group Code

class AuthGroup {
  static String getBaseUrl() =>
      'https://us-central1-appemployees-1e950.cloudfunctions.net/appAuthEmployee/';
  static Map<String, String> headers = {};
  static LoginUserCall loginUserCall = LoginUserCall();
}

class LoginUserCall {
  Future<ApiCallResponse> call({
    String? identification = '',
    String? email = '',
    String? password = '',
  }) async {
    final baseUrl = AuthGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "identification": "${identification}",
  "email": "${email}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'loginUser',
      apiUrl: '${baseUrl}loginUser',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Auth Group Code

/// Start App Employee Group Code

class AppEmployeeGroup {
  static String getBaseUrl({
    String? token = '',
  }) =>
      'https://us-central1-appemployees-1e950.cloudfunctions.net/appEmployee/';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [token]',
  };
  static GetDetailEmployeeCall getDetailEmployeeCall = GetDetailEmployeeCall();
  static UpdateEmployeeCall updateEmployeeCall = UpdateEmployeeCall();
  static TestCall testCall = TestCall();
  static GetListEmployeePayrollCall getListEmployeePayrollCall =
      GetListEmployeePayrollCall();
  static GetDetailEmployeePayrollCall getDetailEmployeePayrollCall =
      GetDetailEmployeePayrollCall();
  static GetListTypesRequestsCall getListTypesRequestsCall =
      GetListTypesRequestsCall();
  static AddRequestsByUserCall addRequestsByUserCall = AddRequestsByUserCall();
  static GetListRequestsByUserCall getListRequestsByUserCall =
      GetListRequestsByUserCall();
  static VacationEmployeeCall vacationEmployeeCall = VacationEmployeeCall();
  static ReportVacationsCall reportVacationsCall = ReportVacationsCall();
  static GetListTrainingEmployeeCall getListTrainingEmployeeCall =
      GetListTrainingEmployeeCall();
  static CommunicationCall communicationCall = CommunicationCall();
  static ChangePasswordCall changePasswordCall = ChangePasswordCall();
}

class GetDetailEmployeeCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = AppEmployeeGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getDetailEmployee',
      apiUrl: '${baseUrl}getDetailEmployee',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateEmployeeCall {
  Future<ApiCallResponse> call({
    dynamic dataJson,
    String? token = '',
  }) async {
    final baseUrl = AppEmployeeGroup.getBaseUrl(
      token: token,
    );

    final data = _serializeJson(dataJson);
    final ffApiRequestBody = '''
${data}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updateEmployee',
      apiUrl: '${baseUrl}updateEmployee',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class TestCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = AppEmployeeGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'test',
      apiUrl: '${baseUrl}test',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetListEmployeePayrollCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = AppEmployeeGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getListEmployeePayroll',
      apiUrl: '${baseUrl}payroll/getListEmployeePayroll',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetDetailEmployeePayrollCall {
  Future<ApiCallResponse> call({
    String? dateInit = '',
    String? dateEnd = '',
    String? tipoDcto = '',
    String? token = '',
  }) async {
    final baseUrl = AppEmployeeGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "dateInit": "${dateInit}",
  "dateEnd": "${dateEnd}",
  "tipo_Dcto": "${tipoDcto}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getDetailEmployeePayroll',
      apiUrl: '${baseUrl}payroll/getDetailEmployeePayroll',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? data(dynamic response) => getJsonField(
        response,
        r'''$.success''',
        true,
      ) as List?;
}

class GetListTypesRequestsCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = AppEmployeeGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getListTypesRequests',
      apiUrl: '${baseUrl}requests/getListTypesRequests',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AddRequestsByUserCall {
  Future<ApiCallResponse> call({
    FFUploadedFile? files,
    String? codeRequest = '',
    String? dateInit = '',
    String? dateEnd = '',
    String? reason = '',
    String? hourInit = '',
    String? hourEnd = '',
    String? token = '',
  }) async {
    final baseUrl = AppEmployeeGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'addRequestsByUser',
      apiUrl: '${baseUrl}requests/addRequestsByUser',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'files': files,
        'codeRequest': codeRequest,
        'dateInit': dateInit,
        'dateEnd': dateEnd,
        'hourInit': hourInit,
        'hourEnd': hourEnd,
        'reason': reason,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetListRequestsByUserCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = AppEmployeeGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getListRequestsByUser',
      apiUrl: '${baseUrl}requests/getListRequestsByUser',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class VacationEmployeeCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = AppEmployeeGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'vacationEmployee',
      apiUrl: '${baseUrl}books/vacationEmployee',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ReportVacationsCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = AppEmployeeGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'ReportVacations',
      apiUrl: '${baseUrl}books/getReportVacations',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetListTrainingEmployeeCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = AppEmployeeGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getListTrainingEmployee',
      apiUrl: '${baseUrl}training/getListTrainingEmployee',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CommunicationCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = AppEmployeeGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Communication',
      apiUrl: '${baseUrl}communication/getListCommunication',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ChangePasswordCall {
  Future<ApiCallResponse> call({
    String? oldpassword = '',
    String? newpassword = '',
    String? token = '',
  }) async {
    final baseUrl = AppEmployeeGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "oldpassword": "${escapeStringForJson(oldpassword)}",
  "newpassword": "${escapeStringForJson(newpassword)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'changePassword',
      apiUrl: '${baseUrl}changePassword',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End App Employee Group Code

/// Start App Master Group Code

class AppMasterGroup {
  static String getBaseUrl({
    String? token = '',
  }) =>
      'https://us-central1-appemployees-1e950.cloudfunctions.net/appMaster/';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [token]',
  };
  static GetListDeptoCall getListDeptoCall = GetListDeptoCall();
  static GetListCitiesCall getListCitiesCall = GetListCitiesCall();
  static GetListMaritalStatusCall getListMaritalStatusCall =
      GetListMaritalStatusCall();
  static GetListGeneralPersonCall getListGeneralPersonCall =
      GetListGeneralPersonCall();
}

class GetListDeptoCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = AppMasterGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getListDepto',
      apiUrl: '${baseUrl}getListDepto',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetListCitiesCall {
  Future<ApiCallResponse> call({
    String? deparment = '',
    String? token = '',
  }) async {
    final baseUrl = AppMasterGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getListCities',
      apiUrl: '${baseUrl}getListCities/${deparment}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetListMaritalStatusCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = AppMasterGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getListMaritalStatus',
      apiUrl: '${baseUrl}getListMaritalStatus',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetListGeneralPersonCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = AppMasterGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getListGeneralPerson',
      apiUrl: '${baseUrl}getListGeneralPerson',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End App Master Group Code

class RecoveryPasswordCall {
  static Future<ApiCallResponse> call({
    String? nit = '',
    String? email = '',
  }) async {
    final ffApiRequestBody = '''
{
  "nit": "${escapeStringForJson(nit)}",
  "email": "${escapeStringForJson(email)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'RecoveryPassword',
      apiUrl:
          'https://us-central1-appemployees-1e950.cloudfunctions.net/appEmployee/sendEmailRecoveryPassword',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
