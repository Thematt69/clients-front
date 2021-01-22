import 'package:clients/domain/core/entities/entities.exports.dart';
import 'package:clients/domain/features/clients/controllers/clients_controller.dart';
import 'package:clients/infrastructure/api/rest_api_client.dart';
import 'package:clients/infrastructure/dtos/dtos.exports.dart';
import 'package:clients/infrastructure/repositories/clients_repository_imp.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class HomeControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<EntityFactory>(Clients());
    Get.put(ClientsDtoFactory());
    Get.put(ClientsRepositoryImp(
      client: Get.find<RestApiClient>().client,
      dtoFactory: Get.find<ClientsDtoFactory>(),
    ));
    Get.put(ClientsController(
      clients: Get.find<EntityFactory>(),
      clientsRepository: Get.find<ClientsRepositoryImp>(),
    ));
    Get.put(HomeController(
      clientsController: Get.find<ClientsController>(),
    ));
  }
}
