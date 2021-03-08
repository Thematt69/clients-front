import 'package:clients/presentation/core/widgets/x_drawer.dart';
import 'package:clients/presentation/core/widgets/error_page.dart';
import 'package:clients/presentation/core/widgets/gradient_divider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'home_view_controller.dart';

class HomeView extends GetView<HomeViewController> {
  HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: XDrawer(),
      appBar: AppBar(
        title: Text('customersListing'.tr),
        centerTitle: true,
      ),
      body: _buildContent(),
      floatingActionButton: FloatingActionButton(
        tooltip: 'comeBackUp'.tr,
        child: Icon(MdiIcons.arrowUp),
        onPressed: () async {
          await controller.scrollController.animateTo(
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

  Widget _buildContent() {
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
                    labelText: 'search'.tr,
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
            success: () => _buildList(),
            error: () {
              return ErrorPage(
                refresh: controller.refresh,
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildList() {
    return Expanded(
      child: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                '${controller.clientsList.length} ' + 'clientsFound'.tr,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: _buildHeaderList(),
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
                          return GradientDivider.color(
                            color: Colors.white,
                          );
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
                      child: Text('noClientsFound'.tr),
                    ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeaderList() {
    return Row(
      children: [
        Expanded(
          child: Text(
            'firstName'.tr,
            style: Get.theme.textTheme.headline2,
            textAlign: TextAlign.center,
          ),
        ),
        Expanded(
          child: Text(
            'lastName'.tr,
            style: Get.theme.textTheme.headline2,
            textAlign: TextAlign.center,
          ),
        ),
        Expanded(
          child: Text(
            'address'.tr,
            style: Get.theme.textTheme.headline2,
            textAlign: TextAlign.center,
          ),
        ),
        Expanded(
          child: Text(
            'city'.tr,
            style: Get.theme.textTheme.headline2,
            textAlign: TextAlign.center,
          ),
        ),
        Expanded(
          child: Text(
            'postalCode'.tr,
            style: Get.theme.textTheme.headline2,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
