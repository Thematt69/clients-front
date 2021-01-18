import 'package:clients/infrastructure/environment/env.dart';
import 'package:clients/presentation/core/styles/theme_datas.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
      defaultTransition: Transition.native,
      theme: XThemeData.light(),
      darkTheme: XThemeData.dark(),
      themeMode: ThemeMode.dark,
    ),
  );
}

Future<void> initServices() async {
  print('starting services ...');

  /// Here is where you put get_storage, hive, shared_pref initialization.
  /// or moor connection, or whatever that's async.
  Get.put(() => Env());
  print('All services started...');
}
