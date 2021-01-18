import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class RestApiLogger extends Interceptor {
  @override
  Future onRequest(RequestOptions options) async {
    debugPrint(
        "REQUEST[${options.method}] => PATH: ${options.baseUrl}${options.path}");
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
    return err;
  }
}
