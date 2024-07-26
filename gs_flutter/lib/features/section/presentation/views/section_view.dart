import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/widgets/body.dart';
import '../../../../core/widgets/section_card_widget.dart';
import '../controllers/section_controller.dart';

class SectionView extends GetView<SectionController> {
  final String title;
  final String featureOneTitle;
  final String featureOneBody;
  final VoidCallback featureOneOnTap;
  final String featureTwoTitle;
  final String featureTwoBody;
  final VoidCallback featureTwoOnTap;
  final Widget featureOneButton;
  final Widget featureTwoButton;

  const SectionView(
    this.title,
    this.featureOneTitle,
    this.featureOneBody,
    this.featureOneOnTap,
    this.featureTwoTitle,
    this.featureTwoBody,
    this.featureTwoOnTap,
    this.featureOneButton,
    this.featureTwoButton, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(
        isScrollable: true,
        children: [
          SectionCard(title: featureOneTitle, body: featureOneBody, button: featureOneButton),
          const SizedBox(height: 16),
          SectionCard(title: featureTwoTitle, body: featureTwoBody, button: featureTwoButton),
        ],
      ),
    );
  }
}
