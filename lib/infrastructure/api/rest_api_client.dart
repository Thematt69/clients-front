import 'package:clients/infrastructure/environment/env.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

import 'rest_api_interceptor.dart';

class RestApiClient {
  final Dio client = Dio();

  RestApiClient({
    RestApiInterceptor restApiInterceptor,
  }) {
    client.options.baseUrl = Get.find<Env>().kBaseUrl;
    client.options.receiveTimeout = 15000;
    client.options.connectTimeout = 15000;
    client.interceptors.add(restApiInterceptor);
  }
}
