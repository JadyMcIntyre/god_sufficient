import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:god_sufficient/core/widgets/body.dart';

class LearnController extends GetxController {
  RxInt tabIndex = 0.obs;
  final List<Widget> pages = [
    Body(children: [Text('Read')]),
    Body(children: [Text('Watch')]),
    Body(children: [Text('Listen')]),
  ];

  void changeTabIndex(int index) {
    tabIndex.value = index;
  }
}
