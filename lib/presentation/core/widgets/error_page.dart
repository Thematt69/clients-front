import 'package:clients/domain/core/entities/entities.exports.dart';
import 'package:clients/infrastructure/api/rest_api_interceptor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ErrorPage extends GetView {
  final String message;
  final dynamic refresh;

  ErrorPage({
    @required this.refresh,
    this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            Get.find<RestApiInterceptor>().state.value.maybeWhen(
                  error: () {
                    Setting setting = Get.find<Setting>();
                    if (setting.isPrivate) {
                      debugPrint('Activer la wifi');
                      // TODO - Dialog pour demander si activation de la wifi
                    }

                    return 'connectionServerError'.tr;
                  },
                  orElse: () => message ?? 'unknownError'.tr,
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
              'reload'.tr,
              style: Get.theme.textTheme.headline2,
            ),
          ),
        ],
      ),
    );
  }
}
