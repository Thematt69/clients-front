import 'package:clients/domain/core/entities/entities.exports.dart';
import 'package:clients/domain/features/clients/controllers/clients_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxBool isCancel = false.obs;
  RxList<Clients> clientsList = <Clients>[].obs;
  final ClientsController clientsController;
  //TODO - Gestion de state

  HomeController({
    @required this.clientsController,
  });

  @override
  Future<void> onInit() async {
    try {
      clientsList.addAll((await clientsController.index()).data);
    } catch (e) {
      debugPrint(e);
    }
    super.onInit();
  }

  @override
  void onReady() async {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> refresh() async {
    clientsList.clear();
    clientsList.addAll((await clientsController.index()).data);
  }
}
