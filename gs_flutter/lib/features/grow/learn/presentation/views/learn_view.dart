import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/widgets/body.dart';
import '../../../../../core/widgets/filled_button.dart';
import '../controllers/learn_controller.dart';

class LearnView extends GetView<LearnController> {
  const LearnView({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Learn'), centerTitle: true),
      body: Body(
        children: [
          GSFilledButton.oneButton(elevatedBtText: 'Read', elevatedBtAction: () {}),
          GSFilledButton.oneButton(elevatedBtText: 'Watch', elevatedBtAction: () {}),
          GSFilledButton.oneButton(elevatedBtText: 'Listen', elevatedBtAction: () {}),
        ],
      ),
    );
  }
}
