import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/widgets/genericbody.dart';
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
      // appBar: AppBar(
      //   title: Text(title),
      //   centerTitle: true,
      // ),
      body: SingleChildScrollView(
        child: GenericBody(
          children: [
            SectionCardWidget(
              title: featureOneTitle,
              body: featureOneBody,
              onTap: featureOneOnTap,
              button: featureOneButton,
            ),
            const SizedBox(
              height: 16,
            ),
            SectionCardWidget(
              title: featureTwoTitle,
              body: featureTwoBody,
              onTap: featureTwoOnTap,
              button: featureTwoButton,
            ),
          ],
        ),
      ),
    );
  }
}
