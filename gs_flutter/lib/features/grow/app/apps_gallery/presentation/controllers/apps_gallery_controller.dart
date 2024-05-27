import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../domain/entities/apps_gallery_item.dart';

class AppsGalleryController extends GetxController {
  List<AppsGalleryItem> apps = [
    AppsGalleryItem(
      'You Version',
      Icons.book,
      () {},
    ),
    AppsGalleryItem(
      'MessengerX',
      Icons.message,
      () {},
    ),
    AppsGalleryItem(
      'Got Questions?',
      Icons.question_answer,
      () {},
    ),
    AppsGalleryItem(
      '412 Teens',
      Icons.person,
      () {},
    ),
  ];
}
