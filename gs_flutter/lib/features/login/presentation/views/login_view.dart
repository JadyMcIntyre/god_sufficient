import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:god_sufficient/config/routes/app_pages.dart';
import 'package:god_sufficient/core/widgets/genericbody.dart';

import '../../../../core/widgets/button.dart';
import '../../../../core/widgets/gs_form.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('God Sufficient'),
        centerTitle: true,
      ),
      body: GenericBody(
        children: [
          const Form(
              child: Column(
            children: [
              GSForm(
                label: 'Email',
                hint: AutofillHints.email,
                iconPath: Icons.mail,
              ),
              GSForm(
                label: 'Password',
                hint: AutofillHints.password,
                iconPath: Icons.lock,
              ),
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
