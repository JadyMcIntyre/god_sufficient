import 'package:get/get.dart';

import '../../features/community/church/presentation/bindings/church_binding.dart';
import '../../features/community/church/presentation/views/church_view.dart';
import '../../features/community/volunteer/presentation/bindings/volunteer_binding.dart';
import '../../features/community/volunteer/presentation/views/volunteer_view.dart';
import '../../features/grow/app/apps_gallery/presentation/bindings/apps_gallery_binding.dart';
import '../../features/grow/app/apps_gallery/presentation/views/apps_gallery_view.dart';
import '../../features/grow/learn/presentation/bindings/learn_binding.dart';
import '../../features/grow/learn/presentation/views/learn_view.dart';
import '../../features/help/get_help/presentation/bindings/get_help_binding.dart';
import '../../features/help/get_help/presentation/views/get_help_view.dart';
import '../../features/help/mentor/become_mentor/presentation/bindings/become_mentor_binding.dart';
import '../../features/help/mentor/become_mentor/presentation/views/become_mentor_view.dart';
import '../../features/help/mentor/find_mentor/presentation/bindings/find_mentor_binding.dart';
import '../../features/help/mentor/find_mentor/presentation/views/find_mentor_view.dart';
import '../../features/home/presentation/bindings/home_binding.dart';
import '../../features/home/presentation/views/home_view.dart';
import '../../features/login/presentation/bindings/login_binding.dart';
import '../../features/login/presentation/views/login_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.login;

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
    GetPage(
      name: _Paths.login,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
  ];
}
