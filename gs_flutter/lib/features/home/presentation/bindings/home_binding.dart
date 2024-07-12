import 'package:get/get.dart';
import 'package:kiwi/kiwi.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  KiwiContainer container = KiwiContainer();

  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => container.resolve<HomeController>());
  }
}
