import 'package:get/get.dart';
import 'routes.dart';
import 'package:clients/presentation/views/mobile/views_mobile.exports.dart'
    as mobile;

class Nav {
  static List<GetPage> routes = [
    GetPage(
      name: Routes.HOME,
      page: () => mobile.HomeView(),
      binding: mobile.HomeViewControllerBinding(),
    ),
    GetPage(
      name: Routes.IPADRESS,
      page: () => mobile.IpAdressView(),
      binding: mobile.IpAdressViewControllerBinding(),
    ),
  ];
}
