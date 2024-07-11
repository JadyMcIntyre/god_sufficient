import 'package:flutter/cupertino.dart';

import 'image_data.dart';

class GSLogo extends StatelessWidget {
  final double? width;

  const GSLogo({super.key, this.width});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      GSImageData.logo,
      height: 100,
      width: width,
    );
  }
}

class GSAppBarLogo extends StatelessWidget {
  const GSAppBarLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return const GSLogo(
      width: 53,
    );
  }
}
