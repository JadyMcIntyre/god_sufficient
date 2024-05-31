import 'package:get/get.dart';
import 'package:kiwi/kiwi.dart';

import '../controllers/learn_controller.dart';

class LearnBinding extends Bindings {
  KiwiContainer container = KiwiContainer();

  @override
  void dependencies() {
    Get.lazyPut<LearnController>(
      () => container.resolve<LearnController>(),
    );
  }
}
