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
      body: Column(
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
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Text('first last - street, city zip');
                },
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Get.isDarkMode
              ? MdiIcons.moonWaningCrescent
              : MdiIcons.whiteBalanceSunny,
        ),
        onPressed: () {
          Get.changeThemeMode(
            Get.isDarkMode ? ThemeMode.light : ThemeMode.dark,
          );
        },
      ),
    );
  }
}
