import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:god_sufficient/assets/colors.dart';

class GradientButton extends StatelessWidget {
  final VoidCallback onTap;
  final String? text;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? margin;
  final Color? colorBegin;
  final Color? colorEnd;

  const GradientButton(
      {super.key,
      required this.onTap,
      this.text,
      this.width,
      this.height,
      this.margin,
      this.colorBegin,
      this.colorEnd});

  @override
  Widget build(BuildContext context) {
    // The RepaintBoundary fixes the flicker on iOS. Not sure if there is a better solution.
    return RepaintBoundary(
      child: Container(
        height: 44,
        width: 180,
        margin: margin ?? EdgeInsets.zero,
        decoration: BoxDecoration(
          border: null,
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            stops: const [0, 1],
            colors: [
              colorBegin ?? GSColorData.accent,
              colorEnd ?? GSColorData.accent
            ],
          ),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
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
