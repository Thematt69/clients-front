import 'package:clients/domain/core/entities/entities.exports.dart';
import 'package:clients/domain/features/clients/controllers/clients_controller.dart';
import 'package:clients/presentation/views/mobile/home/home_state.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final ClientsController clientsController;

  HomeController({
    @required this.clientsController,
  });

  Rx<HomeState> state = HomeState.initial().obs;
  RxBool isCancel = false.obs;
  RxList<Client> clientsList = <Client>[].obs;
  TextEditingController textController = TextEditingController();
  String recherche = "";
  ScrollController scrollController;

  @override
  Future<void> onInit() async {
    try {
      state.value = HomeState.loading();

      scrollController = ScrollController();

      clientsList.addAll((await clientsController.index()).data);

      textController.text = "";

      state.value = HomeState.loaded();
    } catch (e) {
      state.value = HomeState.error(message: e);
    }
    super.onInit();
  }

  @override
  void onReady() async {
    textController.addListener(() async {
      if (textController.text != "" && textController.text != recherche) {
        recherche = textController.text;

        clientsList.clear();
        clientsList.addAll(
            (await clientsController.show(value: textController.text)).data);
      }
    });
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  Future<void> refresh() async {
    try {
      state.value = HomeState.loading();

      clientsList.clear();
      if (textController.text != "") {
        clientsList.addAll(
            (await clientsController.show(value: textController.text)).data);
      } else {
        clientsList.addAll((await clientsController.index()).data);
      }

      state.value = HomeState.loaded();
    } catch (e) {
      state.value = HomeState.error(message: e);
    }
    super.refresh();
  }
}
