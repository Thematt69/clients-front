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
      ),
      body: _buildContent(context),
      floatingActionButton: FloatingActionButton(
        tooltip: "Changer le thème",
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

  Widget _buildContent(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: controller.textController,
                  maxLines: 1,
                  decoration: InputDecoration(
                    labelText: 'Recherche',
                    prefixIcon: Icon(
                      MdiIcons.magnify,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Obx(
          () => controller.state.value.when(
            initial: (_) => SizedBox(),
            loading: (_) => Center(
              child: LinearProgressIndicator(),
            ),
            loaded: (_) => _buildList(context),
            error: (message) {
              return Center(
                child: Text(
                  'Une erreur est survenu.\nMessage d\'erreur : $message',
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildList(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Text('${controller.clientsList.length} clients trouvés'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: _buildEnteteList(context),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: controller.clientsList.isNotEmpty
                  ? RefreshIndicator(
                      onRefresh: () => controller.refresh(),
                      child: ListView.builder(
                        itemCount: controller.clientsList.length,
                        itemBuilder: (context, index) {
                          return Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      controller.clientsList[index].first,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      controller.clientsList[index].last,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      controller.clientsList[index].street,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      controller.clientsList[index].city,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      controller.clientsList[index].zip
                                          .toString(),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    )
                  : Center(
                      child: Text("Aucun client"),
                    ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEnteteList(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            'Prénom',
            style: Theme.of(context).textTheme.headline2,
            textAlign: TextAlign.center,
          ),
        ),
        Expanded(
          child: Text(
            'Nom',
            style: Theme.of(context).textTheme.headline2,
            textAlign: TextAlign.center,
          ),
        ),
        Expanded(
          child: Text(
            'Adresse',
            style: Theme.of(context).textTheme.headline2,
            textAlign: TextAlign.center,
          ),
        ),
        Expanded(
          child: Text(
            'Ville',
            style: Theme.of(context).textTheme.headline2,
            textAlign: TextAlign.center,
          ),
        ),
        Expanded(
          child: Text(
            'Code postal',
            style: Theme.of(context).textTheme.headline2,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
