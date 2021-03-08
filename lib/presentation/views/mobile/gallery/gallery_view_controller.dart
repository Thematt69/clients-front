import 'package:clients/presentation/views/mobile/gallery/gallery_view_state.dart';
import 'package:get/get.dart';

class GalleryViewController extends GetxController {
  Rx<GalleryViewState> state = GalleryViewState.initial().obs;

  @override
  void onInit() {
    try {
      state.value = GalleryViewState.loading();

      // TODO: implement onInit

      state.value = GalleryViewState.success();
    } catch (e) {
      state.value = GalleryViewState.error();
    }
    super.onInit();
  }

  @override
  void refresh() {
    try {
      state.value = GalleryViewState.loading();

      // TODO: implement refresh

      state.value = GalleryViewState.success();
    } catch (e) {
      state.value = GalleryViewState.error();
    }
    super.onInit();
    super.refresh();
  }
}
