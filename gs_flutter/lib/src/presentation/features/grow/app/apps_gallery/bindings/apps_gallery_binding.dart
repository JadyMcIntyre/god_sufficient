import 'package:get/get.dart';

import '../controllers/apps_gallery_controller.dart';

class AppsGalleryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AppsGalleryController>(
      () => AppsGalleryController(),
    );
  }
}
