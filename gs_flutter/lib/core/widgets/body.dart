import 'package:flutter/cupertino.dart';

class Body extends StatelessWidget {
  final List<Widget> children;
  final bool isMainCentered;
  final bool isCrossCentered;
  final bool isScrollable;

  const Body({
    super.key,
    required this.children,
    this.isMainCentered = true,
    this.isCrossCentered = true,
    this.isScrollable = false,
  });

  @override
  Widget build(BuildContext context) {
    return isScrollable
        ? SingleChildScrollView(
            child: standardBody(context),
          )
        : standardBody(context);
  }

  Widget standardBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: isMainCentered ? MainAxisAlignment.center : MainAxisAlignment.start,
        crossAxisAlignment: isCrossCentered ? CrossAxisAlignment.center : CrossAxisAlignment.start,
        children: children,
      ),
    );
  }
}
