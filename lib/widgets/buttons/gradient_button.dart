import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:god_sufficient/assets/colors.dart';

class GradientButton extends StatelessWidget {
  final VoidCallback onTap;
  final String? text;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? margin;

  const GradientButton({
    super.key,
    required this.onTap,
    this.text,
    this.width,
    this.height,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    // The RepaintBoundary fixes the flicker on iOS. Not sure if there is a better solution.
    return RepaintBoundary(
      child: Container(
        height: 44,
        width: 180,
        margin: margin ?? EdgeInsets.zero,
        decoration: const BoxDecoration(
          border: null,
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            stops: [0, 1],
            colors: [
              GodSufficientColors.apricotAccent,
              GodSufficientColors.apricotAccent
            ],
          ),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
            ),
            onPressed: onTap,
            child: Text(
              text ?? 'Continue'.tr,
              textAlign: TextAlign.center,
            )),
      ),
    );
  }
}
