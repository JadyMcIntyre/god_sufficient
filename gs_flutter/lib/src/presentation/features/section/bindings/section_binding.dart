import 'package:get/get.dart';
import 'package:kiwi/kiwi.dart';

import '../controllers/section_controller.dart';

class SectionBinding extends Bindings {
  KiwiContainer container = KiwiContainer();

  @override
  void dependencies() {
    Get.lazyPut<SectionController>(
      () => container.resolve<SectionController>(),
    );
  }
}
