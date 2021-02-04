import 'package:clients/presentation/core/widgets/x_drawer.dart';
import 'package:clients/presentation/navigation/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../views_mobile.exports.dart';

class IpAdressView extends GetView<IpAdressViewController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: XDrawer(),
      appBar: AppBar(
        title: Text('appTitle'.tr),
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
      child: Padding(
        padding: const EdgeInsets.only(left: 12, right: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: controller.textEditingController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'ipAdress'.tr,
              ),
            ),
            SizedBox(height: 10),
            Obx(
              () => controller.state.value.maybeWhen(
                testing: () => Text('testConnexion'.tr,
                    style: Get.theme.textTheme.headline2),
                testSuccess: () => Text('testSuccess'.tr,
                    style: Get.theme.textTheme.headline2),
                testError: () => Text(
                  'testFailed'.tr,
                  style: Get.theme.textTheme.headline2
                      .copyWith(color: Get.theme.accentColor),
                ),
                orElse: () => SizedBox(),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: Text('cancel'.tr),
                  onPressed: () => Get.offAllNamed(Routes.HOME),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  child: Text('save'.tr),
                  onPressed: () async => await controller.testingIp(),
                ),
              ],
            ),
            // TODO - Voir pour avoir un historique des précédentes adresses utilisées
          ],
        ),
      ),
    );
  }
}
