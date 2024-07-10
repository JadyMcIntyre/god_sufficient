import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:god_sufficient/config/routes/app_pages.dart';

import 'core/injector/injector.dart';

void main() {
  Injector.setup();
  runApp(const GodSufficient());
}

class GodSufficient extends StatelessWidget {
  const GodSufficient({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal, brightness: Brightness.dark),
      ),
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
    );
  }
}
