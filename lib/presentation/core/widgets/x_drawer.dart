import 'package:clients/domain/core/entities/entities.exports.dart';
import 'package:clients/infrastructure/api/rest_api_interceptor.dart';
import 'package:clients/presentation/navigation/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class XDrawer extends GetView {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).padding.top),
            ListTile(
              title: Text('serverState'.tr),
            ),
            Obx(
              () {
                return Tooltip(
                  message: Get.find<Setting>().url,
                  child: ListTile(
                    title: Text(
                      Get.find<RestApiInterceptor>().state.value.maybeWhen(
                            connected: () => 'connected'.tr,
                            error: () => 'connectionFailure'.tr,
                            orElse: () => 'currentConnecion'.tr,
                          ),
                    ),
                    leading: Icon(
                      Get.find<RestApiInterceptor>().state.value.maybeWhen(
                            connected: () => MdiIcons.databaseCheckOutline,
                            error: () => MdiIcons.databaseRemoveOutline,
                            orElse: () => MdiIcons.databaseSyncOutline,
                          ),
                    ),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('app'.tr),
            ),
            ListTile(
              leading: Icon(MdiIcons.formatListText),
              title: Text('appTitle'.tr),
              onTap: () {
                Get.offAllNamed(Routes.HOME);
              },
            ),
            ListTile(
              title: Text('settings'.tr),
            ),
            ListTile(
              leading: Icon(MdiIcons.databaseCogOutline),
              title: Text('changeIpAddress'.tr),
              onTap: () {
                Get.offAllNamed(Routes.IPADRESS);
              },
            ),
            ListTile(
              leading: Icon(MdiIcons.translate),
              title: Text('changeLanguage'.tr),
              onTap: () {
                Get.dialog(
                  Dialog(
                    child: SizedBox(
                      width: Get.width * 0.8,
                      height: 100,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12, right: 12),
                          child: DropdownButtonFormField(
                            hint: Text('Sélectionner une langue'),
                            value: Get.locale,
                            onChanged: (locale) {
                              Get.updateLocale(locale);
                              Get.back();
                            },
                            items: [
                              DropdownMenuItem(
                                value: Locale('fr', 'FR'),
                                child: Text('french'.tr),
                              ),
                              DropdownMenuItem(
                                value: Locale('en', 'US'),
                                child: Text('english'.tr),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(MdiIcons.themeLightDark),
              title: Text('changeTheme'.tr),
              onTap: () {
                Get.changeThemeMode(
                  Get.isDarkMode ? ThemeMode.light : ThemeMode.dark,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
