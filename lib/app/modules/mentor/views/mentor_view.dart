import 'package:flutter/material.dart';

import 'package:get/get.dart';

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
              Container(
                color: GodSufficientColors.greyBlueAccent,
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  cursorHeight: 19,
                  style: const TextStyle(
                    color: GodSufficientColors.text,
                  ),
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () {
                          print('object');
                        },
                        icon: const Icon(
                          Icons.close,
                          size: 16,
                          color: GodSufficientColors.apricotAccent,
                        )),
                    focusedBorder: const OutlineInputBorder(
                      borderSide:
                          BorderSide(color: GodSufficientColors.apricotAccent),
                    ),
                    labelText: 'Full name',
                    labelStyle:
                        const TextStyle(color: GodSufficientColors.text),
                    hintText: 'e.g. John Doe',
                    hintStyle: const TextStyle(
                        color: GodSufficientColors.apricotAccent),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
