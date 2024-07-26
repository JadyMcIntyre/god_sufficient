import 'package:flutter/material.dart';
import 'package:god_sufficient/config/theme/gs_theme_data.dart';

class GSFilledButton extends StatelessWidget {
  final bool hasOneButton;
  final String elevatedBtText;
  final String? outlinedBtText;
  final VoidCallback elevatedBtAction;
  final VoidCallback? outlinedBtAction;
  final bool hasPadding;

  const GSFilledButton.oneButton({
    super.key,
    required this.elevatedBtText,
    required this.elevatedBtAction,
    this.hasPadding = true,
  })  : hasOneButton = true,
        outlinedBtText = null,
        outlinedBtAction = null;

  const GSFilledButton.twoButtons({
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
        padding: EdgeInsets.all(hasPadding ? 16 : 0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: SizedBox(
                height: 50,
                child: FilledButton(
                  style: const ButtonStyle(
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    )),
                    backgroundColor: WidgetStatePropertyAll(GSColors.primary),
                    foregroundColor: WidgetStatePropertyAll(Colors.white),
                  ),
                  onPressed: elevatedBtAction,
                  child: Text(elevatedBtText, style: GSText.button),
                ),
              ),
            ),
            const SizedBox(width: 8),
            Visibility(
              visible: !hasOneButton,
              child: Expanded(
                child: SizedBox(
                  height: 50,
                  child: FilledButton(
                    style: const ButtonStyle(
                      shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      )),
                      backgroundColor: WidgetStatePropertyAll(GSColors.secondary),
                      foregroundColor: WidgetStatePropertyAll(Colors.white),
                      side: WidgetStatePropertyAll(BorderSide(color: GSColors.secondary)),
                    ),
                    onPressed: outlinedBtAction,
                    child: Text(outlinedBtText ?? '', style: GSText.button),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
