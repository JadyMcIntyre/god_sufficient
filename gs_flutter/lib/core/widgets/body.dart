import 'package:flutter/cupertino.dart';

class Body extends StatelessWidget {
  final List<Widget> children;
  const Body({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: children,
      ),
    );
  }
}
