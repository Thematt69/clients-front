import 'package:clients/domain/core/entities/entities.exports.dart';
import 'package:clients/infrastructure/api/rest_api_client.dart';
import 'package:clients/presentation/navigation/routes.dart';
import 'package:clients/presentation/views/mobile/setting/setting_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SettingController extends GetxController {
  Rx<SettingState> state = SettingState.initial().obs;
  TextEditingController textEditingController;
  @override
  void onInit() {
    try {
      state.value = SettingState.loading();

      textEditingController =
          TextEditingController(text: Get.find<Setting>().ip);

      state.value = SettingState.loaded();
    } catch (e) {
      state.value = SettingState.error();
    }
    super.onInit();
  }

  @override
  void onClose() {
    textEditingController.dispose();
    super.onClose();
  }

  Future<void> testingIp() async {
    try {
      state.value = SettingState.testing();

      String ip = textEditingController.text;
      await Get.find<RestApiClient>().client.get('http://$ip/');

      state.value = SettingState.testSuccess();

      Get.find<Setting>().ip = ip;
      Get.find<RestApiClient>().changeUrl();
      Get.offAllNamed(Routes.HOME);
    } catch (e) {
      state.value = SettingState.testError();
    }
  }
}
