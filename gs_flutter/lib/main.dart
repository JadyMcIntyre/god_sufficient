import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:god_sufficient/routes/app_pages.dart';

void main() {
  runApp(const GodSufficient());
}

class GodSufficient extends StatelessWidget {
  const GodSufficient({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.light,
      darkTheme: ThemeData.dark(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
    );
  }
}
