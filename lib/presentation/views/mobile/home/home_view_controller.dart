import 'package:clients/domain/features/entities.exports.dart';
import 'package:clients/domain/features/clients/controllers/clients_controller.dart';
import 'package:clients/presentation/views/mobile/home/home_view_state.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeViewController extends GetxController {
  final ClientsController clientsController;

  HomeViewController({
    @required this.clientsController,
  });

  Rx<HomeViewState> state = HomeViewState.initial().obs;
  RxBool isCancel = false.obs;
  RxList<Client> clientsList = <Client>[].obs;
  TextEditingController textController;
  RxString recherche = "".obs;
  ScrollController scrollController;

  @override
  Future<void> onInit() async {
    try {
      state.value = HomeViewState.loading();

      scrollController = ScrollController();
      textController = TextEditingController(text: "");

      clientsList.addAll((await clientsController.index()).data);

      state.value = HomeViewState.success();
    } catch (e) {
      state.value = HomeViewState.error();
    }
    super.onInit();
  }

  @override
  void onReady() async {
    try {
      textController.addListener(() async {
        if (textController.text != recherche.value) {
          recherche.value = textController.text;
        }
      });

      debounce(recherche, (_) async {
        clientsList.clear();
        clientsList.addAll(
            (await clientsController.show(value: recherche.value)).data);
      });
    } catch (e) {
      state.value = HomeViewState.error();
    }
    super.onReady();
  }

  @override
  Future<void> refresh() async {
    try {
      state.value = HomeViewState.loading();

      clientsList.clear();
      if (textController.text != "") {
        clientsList.addAll(
            (await clientsController.show(value: textController.text)).data);
      } else {
        clientsList.addAll((await clientsController.index()).data);
      }

      state.value = HomeViewState.success();
    } catch (e) {
      state.value = HomeViewState.error();
    }
    super.refresh();
  }

  @override
  void onClose() {
    textController.dispose();
    super.onClose();
  }
}
