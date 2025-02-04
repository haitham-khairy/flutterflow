import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class LogInRequestCall {
  static Future<ApiCallResponse> call({
    String? username = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "username": "$username",
  "password": "$password"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'LogInRequest',
      apiUrl:
          'http://\${FFAppState().IPConfig}:8001/v1/LoginAction/LogInRequest',
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

  static bool? logInStatus(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.status''',
      ));
  static bool? autherized(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.Autherized''',
      ));
}

class LoginDataCall {
  static Future<ApiCallResponse> call({
    String? password = 'non',
    String? username = 'non',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'LoginData',
      apiUrl:
          'http://\${FFAppState().IPConfig}:8001/v1/loginData/UserDataFromApp',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'password': password,
        'username': username,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetTagsDataCall {
  static Future<ApiCallResponse> call({
    List<String>? tagsListList,
  }) async {
    final tagsList = _serializeList(tagsListList);

    final ffApiRequestBody = '''
{
  "TagList": $tagsList
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GetTagsData',
      apiUrl:
          'http://\${FFAppState().IPConfig}:8001/v1/GetTagsData/GetTagsData',
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

  static List<String>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].ID''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? line(dynamic response) => (getJsonField(
        response,
        r'''$[:].Line''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? printDate(dynamic response) => (getJsonField(
        response,
        r'''$[:].PrintDate''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? washingCount(dynamic response) => (getJsonField(
        response,
        r'''$[:].WashingCount''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? lastTimeWashed(dynamic response) => (getJsonField(
        response,
        r'''$[:].LastTimeWashed''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? lifetime(dynamic response) => (getJsonField(
        response,
        r'''$[:].Lifetime''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? color(dynamic response) => getJsonField(
        response,
        r'''$[:].Color''',
        true,
      ) as List?;
  static List<String>? sku(dynamic response) => (getJsonField(
        response,
        r'''$[:].SKU''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? maxWashCount(dynamic response) => (getJsonField(
        response,
        r'''$[:].MaxWashCount''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? washOverDue(dynamic response) => (getJsonField(
        response,
        r'''$[:].WashOverDue''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? status(dynamic response) => (getJsonField(
        response,
        r'''$[:].Status''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? daysRemaining(dynamic response) => (getJsonField(
        response,
        r'''$[:].DaysRemaining''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? alarms(dynamic response) => (getJsonField(
        response,
        r'''$[:].Alarms''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? remainingDaysInService(dynamic response) =>
      (getJsonField(
        response,
        r'''$[:].RemainingDaysInService''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class SendTagsListCall {
  static Future<ApiCallResponse> call({
    List<String>? tagsListList,
  }) async {
    final tagsList = _serializeList(tagsListList);

    final ffApiRequestBody = '''
{
  "TagList": $tagsList
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SendTagsList',
      apiUrl:
          'http://\${FFAppState().IPConfig}:8001/v1/StoreTagsInGlobal/StoreTagsInGlobal',
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

class RejectPinRequestCall {
  static Future<ApiCallResponse> call({
    String? tagID = '\"\"',
    String? status = '\"\"',
  }) async {
    final ffApiRequestBody = '''
{
  "TagID": "$tagID",
  "Status": "$status"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'RejectPinRequest',
      apiUrl:
          'http://\${FFAppState().IPConfig}:8001/v1/RejectBinRequest/RejectBinRequest',
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

  static String? response(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Operation''',
      ));
}

class GetFilterParamatersCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetFilterParamaters',
      apiUrl:
          'http://\${FFAppState().IPConfig}:8001/v1/Get_Filter_Parameters/GetFilterParameters',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? lines(dynamic response) => (getJsonField(
        response,
        r'''$.Lines''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetAlarmsListCall {
  static Future<ApiCallResponse> call({
    String? sku = '\"\"',
    String? line = '\"\"',
    String? tagID = '\"\"',
    String? alarm = '\"\"',
    String? status = '\"\"',
  }) async {
    final ffApiRequestBody = '''
{
  "SKU": "$sku",
  "Line": "$line",
  "TagID": "$tagID",
  "Alarm": "$alarm",
  "Status": "$status"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GetAlarmsList',
      apiUrl:
          'http://\${FFAppState().IPConfig}:8001/v1/GetAlarmsList/GetTagsAlarms',
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

  static List<String>? tagID(dynamic response) => (getJsonField(
        response,
        r'''$.TagID''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? line(dynamic response) => (getJsonField(
        response,
        r'''$.Line''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? sku(dynamic response) => (getJsonField(
        response,
        r'''$.SKU''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? alarm(dynamic response) => (getJsonField(
        response,
        r'''$.Alarm''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? staus(dynamic response) => (getJsonField(
        response,
        r'''$.Status''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetAlarmsSummaryCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetAlarmsSummary',
      apiUrl:
          'http://\${FFAppState().IPConfig}:8001/v1/AlarmsSummary/GetAlarmsSummary',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? twix(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Twix''',
      ));
  static String? molding(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Molding''',
      ));
  static String? flutes(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Flutes''',
      ));
  static String? jewels(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Jewels''',
      ));
}

class UpdateLifeTimeCall {
  static Future<ApiCallResponse> call({
    String? tagID = '',
    int? days,
    String? operation = ' ',
  }) async {
    final ffApiRequestBody = '''
{
  "TagID": "$tagID",
  "Days": $days,
  "Operation": "$operation"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'UpdateLifeTime',
      apiUrl:
          'http://\${FFAppState().IPConfig}:8001/v1/UpdateLifeTime/LifetimeUpdater',
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

  static String? response(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Response''',
      ));
}

class GetSKUsFilterCall {
  static Future<ApiCallResponse> call({
    String? line = ' ',
  }) async {
    final ffApiRequestBody = '''
{
  "Line": "$line"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GetSKUsFilter',
      apiUrl:
          'http://\${FFAppState().IPConfig}:8001/v1/GetSKUsFilter/GetSKUsFilter',
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

  static List<String>? sKUsFilter(dynamic response) => (getJsonField(
        response,
        r'''$.SKUs''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class BinsDataUpdaterCall {
  static Future<ApiCallResponse> call({
    String? from = '',
    int? value,
    String? operation = '',
    String? line = '',
    String? sku = '',
    String? to = '',
  }) async {
    final ffApiRequestBody = '''
{
  "From": "$from",
  "To":"$to",
  "Value": $value,
  "Operation": "$operation",
  "Line": "$line",
  "SKU": "$sku"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'BinsDataUpdater',
      apiUrl:
          'http://\${FFAppState().IPConfig}:8001/v1/UpdateLifeTime/BinsDataUpdater',
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

class GetAlarmsTypesCall {
  static Future<ApiCallResponse> call() async {
    const ffApiRequestBody = '''
{
  "test":"test"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GetAlarmsTypes',
      apiUrl:
          'http://\${FFAppState().IPConfig}:8001/v1/Get_Filter_Parameters/GetAlarmsTypes',
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

  static List<String>? alarmsTypes(dynamic response) => (getJsonField(
        response,
        r'''$.Alarms_Types_List''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetStatusTypesCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetStatusTypes',
      apiUrl:
          'http://\${FFAppState().IPConfig}:8001/v1/Get_Filter_Parameters/getStatusTypes',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? statusTypes(dynamic response) => (getJsonField(
        response,
        r'''$.Status_Types_List''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
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
