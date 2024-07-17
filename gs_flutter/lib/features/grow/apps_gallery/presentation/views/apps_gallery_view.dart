import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:god_sufficient/core/widgets/error_screen.dart';
import 'package:god_sufficient/core/widgets/loading_screen.dart';

import '../../../../../config/theme/gs_theme_data.dart';
import '../controllers/apps_gallery_controller.dart';

class AppsGalleryView extends GetView<AppsGalleryController> {
  const AppsGalleryView({super.key});

  @override
  Widget build(BuildContext context) {
    return controller.obx((state) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Apps Gallery'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(
            16,
          ),
          child: GridView.builder(
            itemCount: controller.apps.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.2,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
            ),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: controller.apps[index].onTap,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Icon(
                          controller.apps[index].iconPath,
                          size: 80,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(controller.apps[index].title, style: GSText.body),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      );
    }, onLoading: const LoadingScreen(title: 'Apps Gallery'), onError: (error) => const ErrorScreen());
  }
}
