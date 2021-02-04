import 'package:clients/domain/core/entities/entities.exports.dart';
import 'package:clients/domain/features/clients/controllers/clients_controller.dart';
import 'package:clients/infrastructure/api/rest_api_client.dart';
import 'package:clients/infrastructure/dtos/dtos.exports.dart';
import 'package:clients/infrastructure/repositories/clients_repository_imp.dart';
import 'package:get/get.dart';

import 'home_view_controller.dart';

class HomeViewControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<EntityFactory>(Client());
    Get.put(ClientDtoFactory());
    Get.put(ClientsRepositoryImp(
      client: Get.find<RestApiClient>().client,
      dtoFactory: Get.find<ClientDtoFactory>(),
    ));
    Get.put(ClientsController(
      clients: Get.find<EntityFactory>(),
      clientsRepository: Get.find<ClientsRepositoryImp>(),
    ));
    Get.put(HomeViewController(
      clientsController: Get.find<ClientsController>(),
    ));
  }
}
