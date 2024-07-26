import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/widgets/body.dart';
import '../../../../../core/widgets/filled_button.dart';
import '../controllers/get_help_controller.dart';

class GetHelpView extends GetView<GetHelpController> {
  const GetHelpView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Help'), centerTitle: true),
      body: const Body(children: []),
      bottomNavigationBar: GSFilledButton.oneButton(
        elevatedBtText: 'Find Help',
        elevatedBtAction: () {},
      ),
    );
  }
}
