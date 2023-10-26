import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:god_sufficient/extensions/app_bar_ext.dart';
import 'package:god_sufficient/widgets/buttons/feature_button.dart';
import 'package:god_sufficient/widgets/buttons/gradient_button.dart';

import '../../../../assets/colors.dart';
import '../../../../widgets/buttons/gs_outlined_button.dart';
import '../controllers/learn_controller.dart';

class LearnView extends GetView<LearnController> {
  const LearnView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GSColorData.primary,
      appBar: AppBar().defaultAppBar(titleText: 'Learn'),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: FeatureButton(
                  onPressed: () {},
                  text: const Text('Read'),
                  icon: Icon(Icons.menu_book),
                ),
              ),
              FeatureButton(
                onPressed: () {},
                text: const Text('Listen'),
                icon: const Icon(Icons.headphones),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: FeatureButton(
                  onPressed: () {},
                  text: const Text('Watch'),
                  icon: const Icon(Icons.play_circle),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SafeArea(
          child: GSOutlinedButton(
            onPressed: () {},
            width: MediaQuery.of(context).size.width,
          ),
        ),
      ),
    );
  }
}
