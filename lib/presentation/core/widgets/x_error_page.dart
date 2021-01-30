import 'package:clients/infrastructure/api/rest_api_interceptor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class XErrorPage extends GetView {
  final String message;
  final dynamic refresh;

  XErrorPage({
    @required this.refresh,
    this.message = "Erreur inconnue",
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            Get.find<RestApiInterceptor>().state.value.maybeWhen(
                  error: () => "Erreur de connexion au serveur",
                  orElse: () => message,
                ),
            style: Get.theme.textTheme.headline1,
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () async {
              await refresh();
            },
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(Get.theme.accentColor),
            ),
            child: Text(
              'Recharger la page',
              style: Get.theme.textTheme.headline2,
            ),
          ),
        ],
      ),
    );
  }
}
