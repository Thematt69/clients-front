import 'package:clients/infrastructure/api/rest_api_interceptor.dart';
import 'package:clients/presentation/navigation/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class XDrawer extends GetView {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).padding.top),
          ListTile(
            title: Text('État du serveur'),
          ),
          Obx(
            () {
              return ListTile(
                title: Text(
                  Get.find<RestApiInterceptor>().state.value.maybeWhen(
                        connected: () => 'Connecté',
                        error: () => 'Échec de connexion',
                        orElse: () => 'Connexion en cours...',
                      ),
                ),
                leading: Icon(
                  Get.find<RestApiInterceptor>().state.value.maybeWhen(
                        connected: () => MdiIcons.databaseCheckOutline,
                        error: () => MdiIcons.databaseRemoveOutline,
                        orElse: () => MdiIcons.databaseSyncOutline,
                      ),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Paramètrages'),
          ),
          ListTile(
            leading: Icon(MdiIcons.databaseCogOutline),
            title: Text('Changer l\'adresse IP'),
            onTap: () {
              Get.toNamed(Routes.SETTING);
            },
          ),
          ListTile(
            leading: Icon(MdiIcons.themeLightDark),
            title: Text('Changer le thème'),
            onTap: () {
              Get.changeThemeMode(
                Get.isDarkMode ? ThemeMode.light : ThemeMode.dark,
              );
            },
          ),
        ],
      ),
    );
  }
}
