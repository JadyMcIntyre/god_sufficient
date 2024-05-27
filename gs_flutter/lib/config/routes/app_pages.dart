import 'package:get/get.dart';

import '../../features/community/church/bindings/church_binding.dart';
import '../../features/community/church/views/church_view.dart';
import '../../features/community/volunteer/bindings/volunteer_binding.dart';
import '../../features/community/volunteer/views/volunteer_view.dart';
import '../../features/grow/app/apps_gallery/bindings/apps_gallery_binding.dart';
import '../../features/grow/app/apps_gallery/views/apps_gallery_view.dart';
import '../../features/grow/learn/bindings/learn_binding.dart';
import '../../features/grow/learn/views/learn_view.dart';
import '../../features/home/bindings/home_binding.dart';
import '../../features/home/views/home_view.dart';
import '../../features/help/get_help/bindings/get_help_binding.dart';
import '../../features/help/get_help/views/get_help_view.dart';
import '../../features/help/mentor/become_mentor/bindings/become_mentor_binding.dart';
import '../../features/help/mentor/become_mentor/views/become_mentor_view.dart';
import '../../features/help/mentor/find_mentor/bindings/find_mentor_binding.dart';
import '../../features/help/mentor/find_mentor/views/find_mentor_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.home;

  static final routes = [
    GetPage(
      name: _Paths.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.help,
      page: () => const GetHelpView(),
      binding: GetHelpBinding(),
    ),
    GetPage(
      name: _Paths.church,
      page: () => const ChurchView(),
      binding: ChurchBinding(),
    ),
    GetPage(
      name: _Paths.volunteer,
      page: () => const VolunteerView(),
      binding: VolunteerBinding(),
    ),
    GetPage(
      name: _Paths.appsGallery,
      page: () => const AppsGalleryView(),
      binding: AppsGalleryBinding(),
    ),
    GetPage(
      name: _Paths.learn,
      page: () => const LearnView(),
      binding: LearnBinding(),
    ),
    GetPage(
      name: _Paths.becomeMentor,
      page: () => const BecomeMentorView(),
      binding: BecomeMentorBinding(),
    ),
    GetPage(
      name: _Paths.findMentor,
      page: () => const FindMentorView(),
      binding: FindMentorBinding(),
    ),
  ];
}
