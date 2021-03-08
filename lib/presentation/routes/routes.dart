import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:clients/presentation/views/mobile/views_mobile.exports.dart'
    as mobile;

class Routes {
  static String get initialRoute => HOME;

  static const HOME = '/';
  static const IPADRESS = "/ip-adress";
  static const GALLERY = "/gallery";

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
    GetPage(
      name: Routes.GALLERY,
      page: () => mobile.GalleryView(),
      binding: mobile.GalleryViewControllerBinding(),
    ),
  ];
}
