import 'package:clients/presentation/core/widgets/x_drawer.dart';
import 'package:clients/presentation/views/mobile/gallery/gallery_view_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GalleryView extends GetView<GalleryViewController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: XDrawer(),
      appBar: AppBar(
        title: Text('gallery'.tr),
        centerTitle: true,
      ),
      body: Obx(
        () => controller.state.value.maybeWhen(
          initial: () => SizedBox(),
          loading: () => Center(
            child: CircularProgressIndicator(),
          ),
          orElse: () => _buildContent(),
        ),
      ),
    );
  }

  Widget _buildContent() {
    return Center(
      child: Text('gallery'.tr),
    );
  }
}
