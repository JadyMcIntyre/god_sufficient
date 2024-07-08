import 'package:flutter/material.dart';

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
              height: 16,
            ),
            Text(
              title,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              body,
            ),
            const SizedBox(
              height: 16,
            ),
            button,
          ],
        ),
      ),
    );
  }
}
