import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class UserloginCall {
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
      callName: 'Userlogin',
      apiUrl:
          'https://26b3-41-34-43-225.ngrok-free.app/flutterflow/userlogin?username=$username &password=$password',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? userLoginMSG(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.msg''',
      ));
  static bool? userLoginStatus(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.status''',
      ));
}

class QuerytaglistCall {
  static Future<ApiCallResponse> call({
    String? taglist = '',
    String? line = '',
  }) async {
    final ffApiRequestBody = '''
{
  "taglist": $taglist,
  "line": "$line"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'querytaglist',
      apiUrl:
          'https://692b-196-132-52-14.ngrok-free.app/flutterflow/QueryTagList',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.TEXT,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? taglifetime(dynamic response) => (getJsonField(
        response,
        r'''$[:].taglifetime''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? taglife(dynamic response) => (getJsonField(
        response,
        r'''$[:].taglife''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class QueryTagDataCall {
  static Future<ApiCallResponse> call({
    String? tagdata = '',
  }) async {
    final ffApiRequestBody = '''
{"tagdata":"$tagdata"}''';
    return ApiManager.instance.makeApiCall(
      callName: 'QueryTagData',
      apiUrl:
          'https://692b-196-132-52-14.ngrok-free.app/flutterflow/QueryTagData',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static double? tagdayscount(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$.tagdayscount''',
      ));
  static String? tagdaycountstring(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.tagdaycountstring''',
      ));
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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
