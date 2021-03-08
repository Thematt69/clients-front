import 'package:clients/domain/features/clients/controllers/clients_controller.dart';
import 'package:clients/infrastructure/repositories/clients_repository_imp.dart';
import 'package:get/get.dart';

import 'home_view_controller.dart';

class HomeViewControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ClientsRepositoryImp());
    Get.put(ClientsController(
      clientsRepository: Get.find<ClientsRepositoryImp>(),
    ));
    Get.put(HomeViewController(
      clientsController: Get.find<ClientsController>(),
    ));
  }
}
