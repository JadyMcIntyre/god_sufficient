import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:god_sufficient/features/grow/apps_gallery/domain/use_cases/get_app.dart';

import '../../domain/entities/apps_gallery_item.dart';

class AppsGalleryController extends GetxController with StateMixin {
  final GetAppUseCase useCase;

  AppsGalleryController({required this.useCase});

  List<AppsGalleryItem> apps = [];

  @override
  void onInit() async {
    super.onInit();
    change(null, status: RxStatus.loading());
  }

  @override
  void onReady() async {
    super.onReady();
    await getApps();
  }

  // void onTap(int index) async {
  //   Get.to(() => SelectedMentor(name: mentors[index].name, expertise: mentors[index].expertise));
  // }

  Future<void> getApps() async {
    var response = await useCase.getApps();
    if (response != null) {
      for (var app in response) {
        apps.add(AppsGalleryItem(app.name, Icons.confirmation_num_sharp, () {}));
      }
      change(null, status: RxStatus.success());
    } else {
      change(null, status: RxStatus.error());
    }
  }
}
