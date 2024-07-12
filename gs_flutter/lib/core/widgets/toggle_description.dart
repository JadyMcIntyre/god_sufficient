import 'package:flutter/material.dart';

class ToggleDescription extends StatelessWidget {
  final Widget title;
  final Widget description;

  const ToggleDescription({super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        title: title,
        children: [ListTile(title: description)],
      ),
    );
  }
}
