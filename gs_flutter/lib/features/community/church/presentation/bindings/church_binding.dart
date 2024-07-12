import 'package:get/get.dart';
import 'package:kiwi/kiwi.dart';

import '../controllers/church_controller.dart';

class ChurchBinding extends Bindings {
  KiwiContainer container = KiwiContainer();

  @override
  void dependencies() {
    Get.lazyPut<ChurchController>(() => container.resolve<ChurchController>());
  }
}
