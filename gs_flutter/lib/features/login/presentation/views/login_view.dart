import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:god_sufficient/config/routes/app_pages.dart';
import 'package:god_sufficient/config/theme/images.dart';
import 'package:god_sufficient/core/widgets/body.dart';

import '../../../../core/widgets/button.dart';
import '../../../../core/widgets/gs_form.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Body(
        children: [
          const Padding(padding: EdgeInsets.only(bottom: 32), child: GSLogo()),
          const Form(
              child: Column(
            children: [
              GSForm(label: 'Email', hint: AutofillHints.email, iconPath: Icons.mail),
              GSForm(label: 'Password', hint: AutofillHints.password, iconPath: Icons.lock),
            ],
          )),
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
