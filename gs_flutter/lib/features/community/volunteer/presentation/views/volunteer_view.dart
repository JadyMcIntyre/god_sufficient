import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:god_sufficient/core/widgets/filled_button.dart';

import '../../../../../core/widgets/body.dart';
import '../controllers/volunteer_controller.dart';

class VolunteerView extends GetView<VolunteerController> {
  const VolunteerView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Volunteer'), centerTitle: true),
      body: const Body(children: []),
      bottomNavigationBar: GSFilledButton.twoButtons(
        elevatedBtText: 'Join',
        outlinedBtText: 'Host',
        elevatedBtAction: () {},
        outlinedBtAction: () {},
      ),
    );
  }
}
