import 'package:clients/presentation/core/styles/theme_datas.dart';
import 'package:clients/presentation/core/translations/translations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'domain/core/entities/entities.exports.dart';
import 'infrastructure/api/rest_api_client.dart';
import 'infrastructure/api/rest_api_interceptor.dart';
import 'presentation/navigation/navigation.dart';
import 'presentation/navigation/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initServices();
  var initialRoute = await Routes.initialRoute;
  runApp(
    GetMaterialApp(
      title: 'appTitle'.tr,
      initialRoute: initialRoute,
      getPages: Nav.routes,
      theme: XThemeData.light(),
      darkTheme: XThemeData.dark(),
      translations: Traduction(),
      locale: Locale('fr', 'FR'),
    ),
  );
}

void initServices() {
  debugPrint('Starting services...');

  Get.put(Setting());

  Get.put(
    RestApiClient(
      restApiInterceptor: Get.put(
        RestApiInterceptor(),
      ),
    ),
  );

  debugPrint('All services started');
}
