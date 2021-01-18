import 'package:clients/domain/core/entities/entities.exports.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxBool isCancel = false.obs;
  RxList<Clients> clientsList = [].obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() async {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
