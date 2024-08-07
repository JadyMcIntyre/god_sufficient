import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:god_sufficient/core/widgets/filled_button.dart';

import '../../../../../core/widgets/body.dart';
import '../controllers/church_controller.dart';

class ChurchView extends GetView<ChurchController> {
  const ChurchView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Church'), centerTitle: true),
      body: const Body(children: []),
      bottomNavigationBar: GSFilledButton.oneButton(
        elevatedBtText: 'Find',
        elevatedBtAction: () {},
      ),
    );
  }
}
