import 'package:flutter/material.dart';
import 'package:god_sufficient/assets/colors.dart';

class GSOutlinedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget? child;
  final double? width;
  final double? height;

  const GSOutlinedButton({
    super.key,
    required this.onPressed,
    this.child,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      width: 180,
      decoration: const BoxDecoration(shape: BoxShape.circle),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          backgroundColor: GSColorData.secondary,
          foregroundColor: GSColorData.text,
          side: const BorderSide(color: GSColorData.accent),
        ),
        onPressed: onPressed,
        child: child ?? const SizedBox.shrink(),
      ),
    );
  }
}
