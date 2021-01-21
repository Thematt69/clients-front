import 'package:clients/domain/core/entities/entities.exports.dart';
import 'package:clients/domain/features/clients/controllers/clients_controller.dart';
import 'package:clients/presentation/core/loading_state.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxBool isCancel = false.obs;
  RxList<Clients> clientsList = <Clients>[].obs;
  final ClientsController clientsController;

  Rx<LoadingState> loadingState = LoadingState.initial().obs;

  HomeController({
    @required this.clientsController,
  });

  @override
  Future<void> onInit() async {
    try {
      loadingState.value = LoadingState.loading();

      clientsList.addAll((await clientsController.index()).data);

      loadingState.value = LoadingState.loaded();
    } catch (e) {
      loadingState.value = LoadingState.error(message: e);
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
