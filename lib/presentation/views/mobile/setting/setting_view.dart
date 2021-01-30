import 'package:clients/presentation/core/widgets/x_drawer.dart';
import 'package:clients/presentation/core/widgets/x_error_page.dart';
import 'package:clients/presentation/navigation/routes.dart';
import 'package:clients/presentation/views/mobile/setting/setting_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingView extends GetView<SettingController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: XDrawer(),
      appBar: AppBar(
        title: Text('Listing des clients'),
        centerTitle: true,
      ),
      body: Obx(
        () => controller.state.value.when(
          initial: () => SizedBox(),
          loading: () => Center(
            child: LinearProgressIndicator(),
          ),
          loaded: () => _buildContent(),
          error: () {
            return XErrorPage(
              refresh: controller.refresh,
            );
          },
        ),
      ),
    );
  }

  Widget _buildContent() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // TODO - Faire l'interface de changement IP (serveur ou local)
          // TODO - Voir pour avoir un historique des précédentes adresses utilisées
          Text('Hello World'),
          SizedBox(height: 10),
          ElevatedButton(
            child: Text('Enregistrer'),
            onPressed: () {
              Get.toNamed(Routes.HOME);
            },
          ),
        ],
      ),
    );
  }
}
