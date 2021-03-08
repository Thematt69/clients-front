import 'package:clients/presentation/core/widgets/x_drawer.dart';
import 'package:clients/presentation/core/widgets/error_page.dart';
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
        () => controller.state.value.when(
          initial: () => const SizedBox(),
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          success: () => _buildContent(context),
          error: () {
            return ErrorPage(
              refresh: controller.refresh,
            );
          },
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
