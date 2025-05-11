import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetRandomQuoteCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetRandomQuote',
      apiUrl: 'https://zenquotes.io/api/random',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? quoteText(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].q''',
      ));
  static String? authorName(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].a''',
      ));
}

class GetAuthorImageCall {
  static Future<ApiCallResponse> call({
    String? q = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetAuthorImage',
      apiUrl: 'https://pixabay.com/api/?key=YOUR_API_KEY&q={authorName}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'key': "21629440-69800a9524996fd49638458a7",
        'q': q,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? imageURL(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.hits[:].webformatURL''',
      ));
}

class GetAuthorImageUnplashCall {
  static Future<ApiCallResponse> call({
    String? query = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetAuthorImageUnplash',
      apiUrl:
          'https://api.unsplash.com/search/photos?client_id=lVG5QyN3lxYhp0mKXpK2EeX87p_WkYk9XgeT3Mva5Jk&query={searchTerm}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'query': query,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? authorImage(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.results[0].urls.regular''',
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
