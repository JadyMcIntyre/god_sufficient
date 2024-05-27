import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:god_sufficient/core/widgets/button.dart';

import '../../../../../core/widgets/genericbody.dart';
import '../controllers/volunteer_controller.dart';

class VolunteerView extends GetView<VolunteerController> {
  const VolunteerView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Volunteer'),
        centerTitle: true,
      ),
      body: const GenericBody(
        children: [],
      ),
      bottomNavigationBar: Button.twoButtons(
        elevatedBtText: 'Join',
        outlinedBtText: 'Host',
        elevatedBtAction: () {},
        outlinedBtAction: () {},
      ),
    );
  }
}
