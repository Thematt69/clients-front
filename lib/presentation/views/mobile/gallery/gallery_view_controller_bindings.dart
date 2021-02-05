import 'package:clients/presentation/views/mobile/views_mobile.exports.dart';
import 'package:get/get.dart';

class GalleryViewControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(GalleryViewController());
  }
}
