import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import 'rest_api_logger.dart';

class RestApiInterceptor extends RestApiLogger {
  @override
  Future onRequest(RequestOptions options) async {
    debugPrint(
        "REQUEST[${options.method}] => PATH: ${options.baseUrl}${options.path}");

    // if (options.data is FormData) {
    //   debugPrint((options.data as FormData).fields.toString());
    // } else {
    //   if (options.method == 'POST' ||
    //       options.method == 'PUT' ||
    //       options.method == 'PATCH') {
    //     var jsonData = json.encode(options.data);
    //     debugPrint(jsonData);
    //   }
    // }

    return options;
  }

  @override
  Future onResponse(Response response) async {
    debugPrint(
        "RESPONSE[${response.statusCode}] => PATH: ${response.request.path}");
    return response;
  }

  @override
  Future onError(DioError err) async {
    print("ERROR[${err.response?.statusCode}] => PATH: ${err.request.path}");
    print("ERROR[${err.response?.statusCode}] => PATH: ${err.response?.data}");
    return super.onError(err);
  }
}
