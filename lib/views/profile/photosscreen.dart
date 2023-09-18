import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nothing_app/utils/colors.dart';

class PhotosScreen extends StatelessWidget {
  const PhotosScreen({super.key, required this.data, required this.isMine});

  final List<String> data;
  final bool isMine;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (isMine) SizedBox(height: Get.height * 0.02),
        if (isMine)
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Get.width * 0.04),
            child: InkWell(
              borderRadius: BorderRadius.circular(20),
              hoverColor: AppColors.white,
              onTap: () {},
              child: Container(
                width: Get.width,
                height: Get.height * 0.05,
                decoration: BoxDecoration(
                  color: AppColors.secondary,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Icon(
                  Icons.add_photo_alternate_rounded,
                  color: AppColors.white,
                ),
              ),
            ),
          ),
        if (isMine) SizedBox(height: Get.height * 0.01),
        Flexible(
          child: GridView.builder(
            shrinkWrap: true,
            itemCount: data.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 3,
              mainAxisSpacing: 3,
            ),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Dialog(
                        child: Image.network(
                          data[index],
                          // fit: BoxFit.cover,
                        ),
                      );
                    },
                  );
                },
                onHover: (value) {},
                child: Image.network(
                  data[index],
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
