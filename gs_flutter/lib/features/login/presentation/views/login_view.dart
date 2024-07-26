import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:god_sufficient/config/routes/app_pages.dart';
import 'package:god_sufficient/config/theme/images.dart';
import 'package:god_sufficient/core/widgets/body.dart';

import '../../../../config/theme/gs_theme_data.dart';
import '../../../../core/widgets/filled_button.dart';
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
          const GSLogo(),
          Padding(
            padding: const EdgeInsets.only(top: 64, bottom: 24),
            child: Text('Welcome to GodSufficient', style: GSText.title),
          ),
          const Form(
              child: Column(
            children: [
              GSForm(label: 'Email', hint: AutofillHints.email, iconPath: Icons.mail),
              SizedBox(
                height: 16,
              ),
              GSForm(label: 'Password', hint: AutofillHints.password, iconPath: Icons.lock),
            ],
          )),
          const SizedBox(height: 5),
          GSFilledButton.twoButtons(
            elevatedBtText: 'Register',
            elevatedBtAction: () {},
            outlinedBtText: 'Login',
            outlinedBtAction: () {
              Get.offNamed(Routes.home);
            },
          ),
        ],
      ),
    );
  }
}
