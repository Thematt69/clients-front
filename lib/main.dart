import 'package:clients/infrastructure/environment/env.dart';
import 'package:clients/presentation/core/styles/theme_datas.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'infrastructure/api/rest_api_client.dart';
import 'infrastructure/api/rest_api_interceptor.dart';
import 'presentation/navigation/navigation.dart';
import 'presentation/navigation/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initServices();
  var initialRoute = await Routes.initialRoute;
  runApp(
    GetMaterialApp(
      title: 'Listing clients',
      initialRoute: initialRoute,
      getPages: Nav.routes,
      theme: XThemeData.light(),
      darkTheme: XThemeData.dark(),
    ),
  );
}

Future<void> initServices() async {
  print('starting services ...');

  Get.put(Env());

  Get.put(
    RestApiClient(
      restApiInterceptor: Get.put(
        RestApiInterceptor(),
      ),
    ),
  );

  print('All services started...');
}
