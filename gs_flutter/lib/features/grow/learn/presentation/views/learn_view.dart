import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../config/theme/gs_theme_data.dart';
import '../controllers/learn_controller.dart';

class LearnView extends GetView<LearnController> {
  const LearnView({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Learn'), centerTitle: true),
      body: Obx(
        () => IndexedStack(index: controller.tabIndex.value, children: controller.pages),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.tabIndex.value,
          onTap: controller.changeTabIndex,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.menu_book_outlined), label: 'Read', activeIcon: Icon(Icons.menu_book_outlined, color: GSColors.teal)),
            BottomNavigationBarItem(icon: Icon(Icons.tv), label: 'Watch', activeIcon: Icon(Icons.tv, color: GSColors.teal)),
            BottomNavigationBarItem(
                icon: Icon(Icons.headphones), label: 'Listen', activeIcon: Icon(Icons.headphones, color: GSColors.teal)),
          ],
        ),
      ),
    );
  }
}
