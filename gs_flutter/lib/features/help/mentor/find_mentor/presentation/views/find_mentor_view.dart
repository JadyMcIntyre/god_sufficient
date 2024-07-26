import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:god_sufficient/config/theme/gs_theme_data.dart';
import 'package:god_sufficient/core/widgets/error_screen.dart';
import 'package:god_sufficient/core/widgets/loading_screen.dart';

import '../controllers/find_mentor_controller.dart';

class FindMentorView extends GetView<FindMentorController> {
  const FindMentorView({super.key});

  @override
  Widget build(BuildContext context) {
    return controller.obx(
      (state) {
        return Scaffold(
          appBar: AppBar(title: const Text('Find Mentor'), centerTitle: true),
          body: Padding(
            padding: const EdgeInsets.all(16),
            child: GridView.builder(
              itemCount: controller.mentors.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 8, crossAxisSpacing: 8),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => controller.onTap(index),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          const Icon(Icons.person, size: 80),
                          const SizedBox(height: 8),
                          Text(controller.mentors[index].name, style: GSText.title2),
                          // Padding(
                          //   padding: const EdgeInsets.symmetric(vertical: 8),
                          //   child: Text(controller.mentors[index].testimony, style: GSText.body, textAlign: TextAlign.center),
                          // ),
                          Text(controller.mentors[index].expertise, style: GSText.body, textAlign: TextAlign.center),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
      onLoading: const LoadingScreen(
        title: 'Find Mentor',
      ),
      onError: (error) => const ErrorScreen(),
    );
  }
}
