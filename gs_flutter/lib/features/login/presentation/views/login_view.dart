import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:god_sufficient/config/routes/app_pages.dart';
import 'package:god_sufficient/core/widgets/genericbody.dart';

import '../../../../core/widgets/button.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginView'),
        centerTitle: true,
      ),
      body: GenericBody(
        children: [
          Button.oneButton(
            elevatedBtText: 'Login',
            elevatedBtAction: () {
              Get.offNamed(Routes.home);
            },
          ),
        ],
      ),
    );
  }
}
