import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/find_mentor_controller.dart';

class FindMentorView extends GetView<FindMentorController> {
  const FindMentorView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Find Mentor'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(
          16,
        ),
        child: GridView.builder(
          itemCount: 1,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.8,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => controller.getMentors(),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const Icon(
                        Icons.person,
                        size: 80,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        controller.mentors[index].name,
                      ),
                      Text(
                        controller.mentors[index].testimony,
                      ),
                      Text(
                        controller.mentors[index].expertise,
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
