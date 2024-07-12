import 'package:flutter/material.dart';
import 'package:god_sufficient/config/theme/gs_theme_data.dart';

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
        icon: Icon(iconPath, size: 25),
        label: Text(label, style: GSText.body),
        hintText: hint,
        hintStyle: GSText.bodySubtle,
      ),
    );
  }
}
