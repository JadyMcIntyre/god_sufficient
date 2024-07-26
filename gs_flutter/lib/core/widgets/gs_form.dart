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
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          borderSide: BorderSide(
            color: GSColors.primary,
            width: 1.0,
          ),
        ),
        enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)), borderSide: BorderSide(color: GSColors.primary, width: 0.0)),
        // icon: Icon(iconPath, size: 25),
        label: Text(label, style: GSText.body1),
        hintText: hint,
        hintStyle: GSText.bodySubtle,
      ),
    );
  }
}
