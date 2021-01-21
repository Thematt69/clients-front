import 'package:clients/presentation/core/widgets/error_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Listing des clients'),
        actions: [
          IconButton(
            icon: Icon(MdiIcons.refresh),
            onPressed: () async => await controller.refresh(),
          ),
        ],
      ),
      body: Obx(
        () {
          return controller.loadingState.value.when(
              initial: (_) => SizedBox(),
              loading: (_) => CircularProgressIndicator(),
              loaded: (_) => _buildContent(),
              error: (message) {
                return ErrorPage(
                  message: message,
                  reloadFunction: controller.refresh,
                );
              });
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Get.isDarkMode
              ? MdiIcons.whiteBalanceSunny
              : MdiIcons.moonWaningCrescent,
        ),
        onPressed: () {
          Get.changeThemeMode(
            Get.isDarkMode ? ThemeMode.light : ThemeMode.dark,
          );
        },
      ),
    );
  }

  Widget _buildContent() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  initialValue: 'Rechercher...',
                ),
              ),
              IconButton(
                icon: Icon(
                  MdiIcons.magnify,
                ),
                onPressed: () {},
              )
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: controller.clientsList.isNotEmpty
                ? ListView.builder(
                    itemCount: controller.clientsList.length,
                    itemBuilder: (context, index) {
                      return Text(
                          '${controller.clientsList[index].first} ${controller.clientsList[index].last} - ${controller.clientsList[index].street}, ${controller.clientsList[index].city} ${controller.clientsList[index].zip}');
                    },
                  )
                : Center(
                    child: Text("Aucun client"),
                  ),
          ),
        ),
      ],
    );
  }
}
