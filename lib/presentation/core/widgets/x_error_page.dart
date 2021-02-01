import 'package:clients/infrastructure/api/rest_api_interceptor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class XErrorPage extends GetView {
  final String message;
  final dynamic refresh;

  XErrorPage({
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
                  error: () => 'connectionServerError'.tr,
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
