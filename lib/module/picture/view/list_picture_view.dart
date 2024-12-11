import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mini_project/core.dart';

class ListPictureView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ListPictureController>();

    return Scaffold(
      appBar: AppBar(
        title: const Text("List Photo"),
        backgroundColor: Colors.white,
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return LoadingWidget();
        }

        return ListView.builder(
          itemCount: controller.pictures.length,
          itemBuilder: (context, index) {
            final picture = controller.pictures[index];
            return MouseRegion(
              cursor: SystemMouseCursors.click,
              child: ListContentWidget(
                picture: picture,
                onTap: () {
                  Get.toNamed(
                    Routes.DETAIL,
                    arguments: {'id': picture['id'].toString()},
                  );
                },
              ),
            );
          },
        );
      }),
    );
  }
}
