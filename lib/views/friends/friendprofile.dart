import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nothing_app/controllers/profilecontroller.dart';
import 'package:nothing_app/utils/colors.dart';
import 'package:nothing_app/utils/fonts.dart';
import 'package:nothing_app/views/profile/photosscreen.dart';
import 'package:nothing_app/widgets/sliverpersistent.dart';

class FriendProfileScreen extends StatelessWidget {
  FriendProfileScreen({super.key, required this.data});
  final pofilecontroller = Get.put(ProfileController());

  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: NestedScrollView(
        physics: const NeverScrollableScrollPhysics(),
        floatHeaderSlivers: true,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              expandedHeight: Get.height * 0.4,
              pinned: true,
              backgroundColor: AppColors.secondary,
              automaticallyImplyLeading: false,
              leading: GestureDetector(
                onTap: () => Get.back(),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: AppColors.white,
                ),
              ),
              title: Text(
                data["username"],
                style: FontWhite.font20Bold,
              ),
              flexibleSpace: FlexibleSpaceBar(
                stretchModes: const [
                  StretchMode.fadeTitle,
                  StretchMode.zoomBackground,
                  StretchMode.blurBackground,
                ],
                background: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: Get.width * 0.04,
                            vertical: Get.height * 0.04,
                          ),
                          child: CircleAvatar(
                            backgroundColor: AppColors.white,
                            radius: 48,
                            child: CircleAvatar(
                              radius: 45,
                              backgroundImage: NetworkImage(
                                data["img"],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: Get.width * 0.04,
                          ),
                          child: Text("รูป (${data["photos"].length})",
                              style: FontWhite.font16Bold),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: Get.width * 0.04,
                          ),
                          child: Text("เพื่อน (${data["friends"]})",
                              style: FontWhite.font16Bold),
                        ),
                      ],
                    ),
                    SizedBox(height: Get.height * 0.01),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: Get.width * 0.04),
                      child: Container(
                        width: Get.width,
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "คำอธิบาย",
                                style: FontWhite.font12,
                              ),
                              Text(
                                """${data["decs"]}""",
                                style: FontWhite.font12,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: Get.height * 0.01),
                  ],
                ),
              ),
            ),
          ];
        },
        body: Column(
          children: [
            SizedBox(height: Get.height * 0.02),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Get.width * 0.04),
              child: Container(
                width: Get.width,
                height: Get.height * 0.05,
                decoration: BoxDecoration(
                  color: AppColors.secondary,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Icon(
                  Icons.photo,
                  color: AppColors.white,
                ),
              ),
            ),
            Flexible(
              child: PhotosScreen(
                data: data["photos"],
                isMine: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
