import 'package:flutter/material.dart';
import 'package:god_sufficient/config/theme/gs_theme_data.dart';

class Button extends StatelessWidget {
  final bool hasOneButton;
  final String elevatedBtText;
  final String? outlinedBtText;
  final VoidCallback elevatedBtAction;
  final VoidCallback? outlinedBtAction;
  final bool hasPadding;
  const Button.oneButton({
    super.key,
    required this.elevatedBtText,
    required this.elevatedBtAction,
    this.hasPadding = true,
  })  : hasOneButton = true,
        outlinedBtText = null,
        outlinedBtAction = null;

  const Button.twoButtons({
    super.key,
    required this.elevatedBtText,
    required this.outlinedBtText,
    required this.elevatedBtAction,
    required this.outlinedBtAction,
    this.hasPadding = true,
  }) : hasOneButton = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(
          hasPadding ? 16 : 0,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(GSColors.gsTeal),
                  foregroundColor: WidgetStatePropertyAll(Colors.white),
                  shadowColor: WidgetStatePropertyAll(
                    GSColors.gsOffWhite,
                  ),
                ),
                onPressed: elevatedBtAction,
                child: Text(elevatedBtText, style: GSText.button),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Visibility(
              visible: !hasOneButton,
              child: Expanded(
                child: OutlinedButton(
                  style: const ButtonStyle(
                    foregroundColor: WidgetStatePropertyAll(GSColors.gsOrange),
                    side: WidgetStatePropertyAll(
                      BorderSide(
                        color: GSColors.gsOrange,
                      ),
                    ),
                  ),
                  onPressed: outlinedBtAction,
                  child: Text(outlinedBtText ?? '', style: GSText.button),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
