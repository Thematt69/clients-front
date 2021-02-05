import 'package:clients/presentation/views/mobile/gallery/gallery_view_state.dart';
import 'package:get/get.dart';

class GalleryViewController extends GetxController {
  Rx<GalleryViewState> state = GalleryViewState.initial().obs;

  @override
  void onInit() {
    state.value = GalleryViewState.loading();

    // TODO: implement onInit

    state.value = GalleryViewState.loaded();
    super.onInit();
  }
}
