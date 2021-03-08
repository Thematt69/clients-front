import 'package:clients/presentation/core/styles/theme_datas.dart';
import 'package:clients/presentation/core/translations/translations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'domain/features/entities.exports.dart';
import 'infrastructure/api/rest_api_client.dart';
import 'infrastructure/api/rest_api_interceptor.dart';
import 'presentation/routes/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initServices();
  runApp(
    GetMaterialApp(
      title: 'Thematt69 - App',
      initialRoute: Routes.initialRoute,
      getPages: Routes.routes,
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
