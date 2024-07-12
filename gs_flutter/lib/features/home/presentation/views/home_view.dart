import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:god_sufficient/config/theme/gs_theme_data.dart';
import 'package:god_sufficient/config/theme/images.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const GSAppBarLogo(), centerTitle: false),
      body: Obx(
        () => IndexedStack(index: controller.tabIndex.value, children: controller.pages),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.tabIndex.value,
          onTap: controller.changeTabIndex,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.help), label: 'Help', activeIcon: Icon(Icons.help, color: GSColors.teal)),
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: 'Community',
              activeIcon: Icon(Icons.people, color: GSColors.teal),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.arrow_circle_up_sharp),
              label: 'Grow',
              activeIcon: Icon(Icons.arrow_circle_up_sharp, color: GSColors.teal),
            ),
          ],
        ),
      ),
    );
  }
}
