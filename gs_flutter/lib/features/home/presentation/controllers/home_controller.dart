import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../config/routes/app_pages.dart';
import '../../../../core/widgets/button.dart';
import '../../../section/presentation/views/section_view.dart';

class HomeController extends GetxController {
  RxInt tabIndex = 0.obs;
  final List<Widget> pages = [
    SectionView(
      'Help',
      'Help',
      'Find Christian rehab and support facilities to help overcome addictions and challenges, offering a path towards healing and strength.',
      () => Get.toNamed(Routes.help),
      'Mentor',
      'Connect with individuals who\'ve overcome struggles with God\'s help. Share your journey, receive guidance, or become a mentor to support others.',
      () => Get.toNamed(Routes.mentor),
      Button.oneButton(
        elevatedBtText: 'Find Help',
        elevatedBtAction: () => Get.toNamed(Routes.help),
        hasPadding: false,
      ),
      Button.twoButtons(
        elevatedBtText: 'Find',
        outlinedBtText: 'Become',
        elevatedBtAction: () => Get.toNamed(Routes.findMentor),
        outlinedBtAction: () => Get.toNamed(Routes.becomeMentor),
        hasPadding: false,
      ),
    ),
    SectionView(
      'Community',
      'Church',
      'Discover local churches in your area to join a community of faith, worship, and fellowship.',
      () => Get.toNamed(Routes.church),
      'Volunteer',
      'Participate in or advertise community and church events, big or small, to volunteer and make an impact.',
      () => Get.toNamed(Routes.volunteer),
      Button.oneButton(
        elevatedBtText: 'Churches Near You',
        elevatedBtAction: () => Get.toNamed(Routes.church),
        hasPadding: false,
      ),
      Button.twoButtons(
        elevatedBtText: 'Join',
        outlinedBtText: 'Host',
        elevatedBtAction: () => Get.toNamed(Routes.volunteer),
        outlinedBtAction: () => Get.toNamed(Routes.volunteer),
        hasPadding: false,
      ),
    ),
    SectionView(
      'Grow',
      'Apps',
      'Explore a curated collection of Christian apps designed to aid your spiritual journey and daily walk with God.',
      () => Get.toNamed(Routes.appsGallery),
      'Learn',
      'Access free Christian resources that align with Biblical teachings, available in formats to read, watch, and listen, to nurture your faith and understanding.',
      () => Get.toNamed(Routes.learn),
      Button.oneButton(
        elevatedBtText: 'Explore',
        elevatedBtAction: () => Get.toNamed(Routes.appsGallery),
        hasPadding: false,
      ),
      Button.oneButton(
        elevatedBtText: 'Explore',
        elevatedBtAction: () => Get.toNamed(Routes.learn),
        hasPadding: false,
      ),
    ),
  ];

  void changeTabIndex(int index) {
    tabIndex.value = index;
  }
}
