import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:god_sufficient/src/presentation/widgets/genericbody.dart';

import '../../../../widgets/button.dart';
import '../controllers/get_help_controller.dart';

class GetHelpView extends GetView<GetHelpController> {
  const GetHelpView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Help'),
        centerTitle: true,
      ),
      body: const GenericBody(
        children: [],
      ),
      bottomNavigationBar: Button.oneButton(
        elevatedBtText: 'Find Help',
        elevatedBtAction: () {},
      ),
    );
  }
}
