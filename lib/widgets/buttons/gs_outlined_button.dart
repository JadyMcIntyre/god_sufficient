import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:god_sufficient/assets/colors.dart';

class GSOutlinedButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Text? text;
  final double? width;
  final double? height;

  const GSOutlinedButton({
    super.key,
    required this.onPressed,
    this.text,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      width: width ?? 180,
      decoration: const BoxDecoration(shape: BoxShape.circle),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          backgroundColor: GSColorData.secondary,
          foregroundColor: GSColorData.text,
          side: const BorderSide(color: GSColorData.accent),
        ),
        onPressed: onPressed ??
            () {
              Get.back();
            },
        child: text ?? const Text('Back'),
      ),
    );
  }
}
