import 'package:clients/infrastructure/api/api_state.dart';
import 'package:dio/dio.dart';
import 'package:get/get_rx/get_rx.dart';

class RestApiInterceptor extends Interceptor {
  Rx<ApiState> state = ApiState.initial().obs;

  @override
  Future onRequest(RequestOptions options) async {
    if (state.value == ApiState.initial() || state.value == ApiState.error())
      state.value = ApiState.connecting();

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
