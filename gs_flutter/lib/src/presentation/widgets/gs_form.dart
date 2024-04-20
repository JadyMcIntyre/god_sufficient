import 'package:flutter/material.dart';

class GSForm extends StatelessWidget {
  final String label;
  final String hint;
  final IconData iconPath;

  const GSForm({
    super.key,
    required this.label,
    required this.hint,
    required this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        icon: Icon(
          iconPath,
          size: 25,
        ),
        label: Text(label),
        hintText: hint,
      ),
    );
  }
}
