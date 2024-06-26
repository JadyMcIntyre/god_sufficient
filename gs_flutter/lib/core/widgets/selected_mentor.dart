import 'package:flutter/material.dart';
import 'package:god_sufficient/core/widgets/genericbody.dart';

import 'button.dart';

class SelectedMentor extends StatelessWidget {
  final String name;
  final String expertise;
  const SelectedMentor(
      {super.key, required this.name, required this.expertise});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meet $name:'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: GenericBody(children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 40,
                      child: Icon(
                        Icons.face_2,
                        size: 30,
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(name),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(expertise),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
      bottomNavigationBar: Button.oneButton(
        elevatedBtText: 'Connect',
        elevatedBtAction: () {},
      ),
    );
  }
}
