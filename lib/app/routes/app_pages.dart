import 'package:get/get.dart';

import '../modules/learn/bindings/learn_binding.dart';
import '../modules/learn/views/learn_view.dart';
import '../modules/mentor/bindings/mentor_binding.dart';
import '../modules/mentor/views/mentor_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.MENTOR,
      page: () => const MentorView(),
      binding: MentorBinding(),
    ),
    GetPage(
      name: _Paths.LEARN,
      page: () => const LearnView(),
      binding: LearnBinding(),
    ),
  ];
}
