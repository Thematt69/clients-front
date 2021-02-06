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
          orElse: () => _buildContent(context),
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Center(
      child: GridView.count(
        crossAxisCount: context.width ~/ 140,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        padding: const EdgeInsets.all(12),
        children: [
          for (var i = 0; i < 12; i++)
            GestureDetector(
              onTap: () {
                Get.dialog(
                  Dialog(
                    backgroundColor: Colors.transparent,
                    child: Image.asset('assets/images/icon.png'),
                  ),
                );
              },
              child: Image.asset('assets/images/icon.png'),
            ),
        ],
      ),
    );
  }
}
