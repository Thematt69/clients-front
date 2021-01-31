import 'package:clients/domain/features/setting/entities/setting.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

import 'rest_api_interceptor.dart';

class RestApiClient {
  final Dio client = Dio();

  RestApiClient({
    RestApiInterceptor restApiInterceptor,
  }) {
    client.options.baseUrl = Get.find<Setting>().url;
    client.options.receiveTimeout = 5000;
    client.options.connectTimeout = 5000;
    client.options.sendTimeout = 5000;
    client.interceptors.add(restApiInterceptor);
  }

  void changeUrl() {
    client.options.baseUrl = Get.find<Setting>().url;
  }
}
