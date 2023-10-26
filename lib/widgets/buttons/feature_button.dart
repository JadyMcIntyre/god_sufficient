import 'package:flutter/material.dart';
import 'package:god_sufficient/assets/colors.dart';

class FeatureButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Text? text;
  final double? width;
  final double? height;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final Icon? icon;

  const FeatureButton({
    super.key,
    required this.onPressed,
    this.text,
    this.width,
    this.height,
    this.backgroundColor,
    this.foregroundColor,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 88,
      width: 300,
      decoration: const BoxDecoration(shape: BoxShape.circle),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          backgroundColor: backgroundColor ?? GSColorData.secondary,
          foregroundColor: foregroundColor ?? GSColorData.accent,
          side: const BorderSide(color: GSColorData.tertiary),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            text ?? const Text('read', style: TextStyle(fontSize: 100)),
            const SizedBox(
              width: 8,
            ),
            icon ?? const Icon(Icons.change_circle),
          ],
        ),
      ),
    );
  }
}
