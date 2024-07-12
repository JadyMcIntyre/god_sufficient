import 'package:flutter/material.dart';
import 'package:god_sufficient/config/theme/gs_theme_data.dart';
import 'package:god_sufficient/core/widgets/toggle_description.dart';

class SectionCardWidget extends StatelessWidget {
  const SectionCardWidget({
    super.key,
    required this.title,
    required this.body,
    required this.button,
  });

  final String title;
  final String body;
  final Widget button;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(
          16,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Card(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 24,
                    horizontal: MediaQuery.of(context).size.width * 0.3,
                  ),
                  child: const Icon(
                    Icons.image,
                    size: 50,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            ToggleDescription(
              title: Text(
                title,
                style: GSText.title,
              ),
              description: Text(
                body,
                style: GSText.body,
              ),
            ),
            button,
          ],
        ),
      ),
    );
  }
}
