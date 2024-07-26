import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:god_sufficient/core/widgets/gs_form.dart';

import '../../../../../../core/widgets/body.dart';
import '../../../../../../core/widgets/filled_button.dart';
import '../controllers/become_mentor_controller.dart';

class BecomeMentorView extends GetView<BecomeMentorController> {
  const BecomeMentorView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Become Mentor'), centerTitle: true),
      body: const Body(
        children: [
          Form(
            child: Column(
              children: [
                GSForm(
                  label: 'First Name',
                  hint: 'John',
                  iconPath: Icons.person,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: GSForm(
                    label: 'Last Name',
                    hint: 'Doe',
                    iconPath: Icons.person_2_outlined,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child: GSForm(
                    label: 'Email',
                    hint: 'me@example.com',
                    iconPath: Icons.email_outlined,
                  ),
                ),
                GSForm(
                  label: 'About You (optional)',
                  hint: 'Any additional info you\'d like to tell us.',
                  iconPath: Icons.chat_bubble,
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: GSFilledButton.oneButton(
        elevatedBtText: 'Submit',
        elevatedBtAction: () {},
      ),
    );
  }
}
