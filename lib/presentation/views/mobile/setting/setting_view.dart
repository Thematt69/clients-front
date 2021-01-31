import 'package:clients/presentation/core/widgets/x_drawer.dart';
import 'package:clients/presentation/core/widgets/x_error_page.dart';
import 'package:clients/presentation/views/mobile/setting/setting_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
        () => controller.state.value.maybeWhen(
          initial: () => SizedBox(),
          loading: () => Center(
            child: LinearProgressIndicator(),
          ),
          orElse: () => _buildContent(),
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
      child: Padding(
        padding: const EdgeInsets.only(left: 12, right: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: controller.textEditingController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Adresse IP',
              ),
            ),
            SizedBox(height: 10),
            Obx(
              () => controller.state.value.maybeWhen(
                testing: () => Text('Test de connexion...',
                    style: Get.theme.textTheme.headline2),
                testSuccess: () => Text('Test effectué avec succés',
                    style: Get.theme.textTheme.headline2),
                testError: () => Text(
                  'Test échoué !',
                  style: Get.theme.textTheme.headline2
                      .copyWith(color: Get.theme.accentColor),
                ),
                orElse: () => SizedBox(),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              child: Text('Enregistrer'),
              onPressed: () async => await controller.testingIp(),
            ),
            // TODO - Voir pour avoir un historique des précédentes adresses utilisées
          ],
        ),
      ),
    );
  }
}
