import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:god_sufficient/extensions/text_form_field_ext.dart';

import '../controllers/mentor_controller.dart';
import 'package:god_sufficient/assets/colors.dart';

class MentorView extends GetView<MentorController> {
  const MentorView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GodSufficientColors.background,
      appBar: AppBar(
        title: const Text(
          'Become A Mentor',
          style: TextStyle(color: GodSufficientColors.text),
        ),
        centerTitle: true,
        backgroundColor: GodSufficientColors.greyBlueAccent,
      ),
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
                      .defaultTextField('Full name', 'e.g. John Doe'),
                ),
              ),
              Container(
                color: GodSufficientColors.greyBlueAccent,
                child:
                    TextFormField().defaultTextField('Email', 'e.g. John Doe'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
