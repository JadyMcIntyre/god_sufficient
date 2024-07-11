import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(height: 100, width: 53, child: Image.asset('assets/gs_logo.png')),
        centerTitle: false,
      ),
      body: Obx(
        () => IndexedStack(
          index: controller.tabIndex.value,
          children: controller.pages,
        ),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.tabIndex.value,
          onTap: controller.changeTabIndex,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.help,
              ),
              label: 'Help',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.people,
                ),
                label: 'Community'),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.arrow_circle_up_sharp,
              ),
              label: 'Grow',
            ),
          ],
        ),
      ),
    );
  }
}
