import 'package:clients/presentation/views/mobile/setting/setting_state.dart';
import 'package:get/get.dart';

class SettingController extends GetxController {
  Rx<SettingState> state = SettingState.initial().obs;
  @override
  void onInit() {
    try {
      state.value = SettingState.loading();
      // TODO: implement onInit
      state.value = SettingState.loaded();
    } catch (e) {
      state.value = SettingState.error();
    }
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void refresh() {
    try {
      state.value = SettingState.loading();
      // TODO: implement refresh
      state.value = SettingState.loaded();
    } catch (e) {
      state.value = SettingState.error();
    }
    super.refresh();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
