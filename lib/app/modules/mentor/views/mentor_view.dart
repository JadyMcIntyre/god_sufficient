import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:god_sufficient/extensions/app_bar_ext.dart';
import 'package:god_sufficient/extensions/text_form_field_ext.dart';
import 'package:god_sufficient/widgets/buttons/gradient_button.dart';
import 'package:god_sufficient/widgets/buttons/gs_outlined_button.dart';

import '../controllers/mentor_controller.dart';
import 'package:god_sufficient/assets/colors.dart';

class MentorView extends GetView<MentorController> {
  const MentorView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GodSufficientColors.background,
      appBar: AppBar().defaultAppBar(titleText: 'Become A Mentor'),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Container(
                  color: GodSufficientColors.greyBlueAccent,
                  child: TextFormField()
                      .defaultTextField('Full name', 'E.g. John Doe'),
                ),
              ),
              Container(
                color: GodSufficientColors.greyBlueAccent,
                child: TextFormField()
                    .defaultTextField('Email', 'E.g. john@gmail.com'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Container(
                  color: GodSufficientColors.greyBlueAccent,
                  child: TextFormField()
                      .phoneTextField('Contact number', 'E.g. 082 123 4567'),
                ),
              ),
              Container(
                color: GodSufficientColors.greyBlueAccent,
                child: TextFormField().descriptionTextField(
                    'Description', 'Tell us a little bit about yourself.'),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GSOutlinedButton(
              onPressed: () {},
              child: const Text('Cancel'),
            ),
            GradientButton(
              onTap: () {},
              text: 'Submit',
            ),
          ],
        ),
      ),
    );
  }
}
