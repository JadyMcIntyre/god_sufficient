import 'package:get/get.dart';

import '../controllers/church_controller.dart';

class ChurchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChurchController>(
      () => ChurchController(),
    );
  }
}
