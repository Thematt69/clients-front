import 'package:clients/domain/core/entities/entities.exports.dart';
import 'package:clients/infrastructure/api/rest_api_client.dart';
import 'package:clients/presentation/navigation/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'ip_adress_view_state.dart';

class IpAdressViewController extends GetxController {
  Rx<IpAdressViewState> state = IpAdressViewState.initial().obs;
  TextEditingController textEditingController;
  @override
  void onInit() {
    state.value = IpAdressViewState.loading();

    textEditingController = TextEditingController(text: Get.find<Setting>().ip);

    state.value = IpAdressViewState.loaded();
    super.onInit();
  }

  @override
  void onClose() {
    textEditingController.dispose();
    super.onClose();
  }

  Future<void> testingIp() async {
    try {
      state.value = IpAdressViewState.testing();

      String ip = textEditingController.text;
      await Get.find<RestApiClient>().client.get('http://$ip/');

      state.value = IpAdressViewState.testSuccess();

      Get.find<Setting>().ip = ip;
      Get.find<RestApiClient>().changeUrl();
      Get.offAllNamed(Routes.HOME);
    } catch (e) {
      state.value = IpAdressViewState.testError();
    }
  }
}
