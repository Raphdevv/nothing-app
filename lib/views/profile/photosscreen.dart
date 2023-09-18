import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nothing_app/controllers/profilecontroller.dart';

class PhotosScreen extends StatelessWidget {
  PhotosScreen({super.key});

  final chatcontroller = Get.put(ProfileController());
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: chatcontroller.photos.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 3,
        mainAxisSpacing: 3,
      ),
      itemBuilder: (context, index) {
        return Image.network(
          chatcontroller.photos[index],
          fit: BoxFit.cover,
        );
      },
    );
  }
}
