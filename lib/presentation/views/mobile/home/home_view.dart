import 'package:clients/presentation/core/widgets/x_drawer.dart';
import 'package:clients/presentation/core/widgets/x_error_page.dart';
import 'package:clients/presentation/core/widgets/x_gradient_divider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: XDrawer(),
      appBar: AppBar(
        title: Text('Listing des clients'),
        centerTitle: true,
      ),
      body: _buildContent(context),
      floatingActionButton: FloatingActionButton(
        tooltip: "Revenir en haut",
        child: Icon(MdiIcons.arrowUp),
        onPressed: () {
          controller.scrollController.animateTo(
            0,
            duration: Duration(
              milliseconds: 200,
            ),
            curve: Curves.linear,
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
            initial: () => SizedBox(),
            loading: () => Center(
              child: LinearProgressIndicator(),
            ),
            loaded: () => _buildList(context),
            error: () {
              return XErrorPage(
                refresh: controller.refresh,
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
                      child: ListView.separated(
                        controller: controller.scrollController,
                        itemCount: controller.clientsList.length,
                        separatorBuilder: (context, index) {
                          return XGradientDivider.white();
                        },
                        itemBuilder: (context, index) {
                          return Padding(
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
