import 'package:get/get.dart';
import 'package:kiwi/kiwi.dart';

import '../controllers/apps_gallery_controller.dart';

class AppsGalleryBinding extends Bindings {
  KiwiContainer container = KiwiContainer();

  @override
  void dependencies() {
    Get.lazyPut<AppsGalleryController>(
      () => container.resolve<AppsGalleryController>(),
    );
  }
}
