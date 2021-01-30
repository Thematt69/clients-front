import 'dart:convert';
import 'package:clients/infrastructure/api/api_state.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get_rx/get_rx.dart';
import 'rest_api_logger.dart';

class RestApiInterceptor extends RestApiLogger {
  Rx<ApiState> state = ApiState.initial().obs;

  @override
  Future onRequest(RequestOptions options) async {
    state.value = ApiState.connecting();

    if (options.data is FormData) {
      debugPrint((options.data as FormData).fields.toString());
    } else {
      if (options.method == 'POST' ||
          options.method == 'PUT' ||
          options.method == 'PATCH') {
        var jsonData = json.encode(options.data);
        debugPrint(jsonData);
      }
    }

    return options;
  }

  @override
  Future onResponse(Response response) async {
    state.value = ApiState.connected();
    return response;
  }

  @override
  Future onError(DioError err) async {
    state.value = ApiState.error();
    return super.onError(err);
  }
}
