import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../widgets/button.dart';
import '../../../../widgets/genericbody.dart';
import '../controllers/learn_controller.dart';

class LearnView extends GetView<LearnController> {
  const LearnView({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn'),
        centerTitle: true,
      ),
      body: GenericBody(
        children: [
          Button.oneButton(
            elevatedBtText: 'Read',
            elevatedBtAction: () {},
          ),
          Button.oneButton(
            elevatedBtText: 'Watch',
            elevatedBtAction: () {},
          ),
          Button.oneButton(
            elevatedBtText: 'Listen',
            elevatedBtAction: () {},
          ),
        ],
      ),
    );
  }
}
