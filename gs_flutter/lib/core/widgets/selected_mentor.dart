import 'package:flutter/material.dart';
import 'package:god_sufficient/config/theme/gs_theme_data.dart';
import 'package:god_sufficient/core/widgets/body.dart';

import 'filled_button.dart';

class SelectedMentor extends StatelessWidget {
  final String name;
  final String expertise;

  const SelectedMentor({super.key, required this.name, required this.expertise});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Body(isMainCentered: false, children: [
        ListTile(
          visualDensity: const VisualDensity(horizontal: 4),
          leading: const Icon(Icons.face, size: 80),
          title: Text(name),
          titleTextStyle: GSText.heading,
          isThreeLine: true,
          subtitle: Text(expertise),
          subtitleTextStyle: GSText.body1,
        ),
      ]),
      bottomNavigationBar: GSFilledButton.oneButton(
        elevatedBtText: 'Connect',
        elevatedBtAction: () {},
      ),
    );
  }
}
