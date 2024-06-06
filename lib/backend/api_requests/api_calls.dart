import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

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
          'https://9eb5-41-46-208-159.ngrok-free.app/flutterflow/QueryTagList',
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
          'https://9eb5-41-46-208-159.ngrok-free.app/v1/GetTagsData/GetTagsData',
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

  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.ID''',
      );
  static dynamic line(dynamic response) => getJsonField(
        response,
        r'''$.Line''',
      );
  static dynamic printDate(dynamic response) => getJsonField(
        response,
        r'''$.PrintDate''',
      );
  static dynamic washingCount(dynamic response) => getJsonField(
        response,
        r'''$.WashingCount''',
      );
  static dynamic lastTimeWashed(dynamic response) => getJsonField(
        response,
        r'''$.LastTimeWashed''',
      );
  static dynamic lifetime(dynamic response) => getJsonField(
        response,
        r'''$.Lifetime''',
      );
}

class LogInRequestCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'LogInRequest',
      apiUrl:
          'https://9eb5-41-46-208-159.ngrok-free.app/v1/LoginAction/LogInRequest',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'LogIn': 1,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic logInStatus(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
}

class LoginDataCall {
  static Future<ApiCallResponse> call({
    String? password = 'non',
    String? username = 'non',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'LoginData',
      apiUrl:
          'https://9eb5-41-46-208-159.ngrok-free.app/v1/loginData/UserDataFromApp',
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
          'https://9eb5-41-46-208-159.ngrok-free.app/v1/GetTagsData/GetTagsData',
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
  static List? all(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
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
