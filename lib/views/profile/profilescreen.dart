import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nothing_app/controllers/profilecontroller.dart';
import 'package:nothing_app/utils/colors.dart';
import 'package:nothing_app/utils/fonts.dart';
import 'package:nothing_app/views/profile/friendsscreen.dart';
import 'package:nothing_app/views/profile/photosscreen.dart';
import 'package:nothing_app/widgets/sliverpersistent.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});
  final pofilecontroller = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          physics: const NeverScrollableScrollPhysics(),
          floatHeaderSlivers: true,
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                expandedHeight: Get.height * 0.4,
                pinned: true,
                backgroundColor: AppColors.secondary,
                automaticallyImplyLeading: false,
                title: Text(
                  'mmabelz',
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
                              child: const CircleAvatar(
                                radius: 45,
                                backgroundImage: NetworkImage(
                                  "https://i.pinimg.com/564x/ef/53/06/ef53069f775496f9407c7c60d0332b08.jpg",
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
                            child: Text(
                                "รูป (${pofilecontroller.photos.length})",
                                style: FontWhite.font16Bold),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: Get.width * 0.04,
                            ),
                            child: Text(
                                "เพื่อน (${pofilecontroller.friends.length})",
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
                                  """For work 0898040693 (k.Fern)
092-2726729(k.Bee)
🌷𝟘𝟞/𝔻𝕖𝕔/𝟚𝟘𝟘𝟘🌷""",
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
              SliverPersistentHeader(
                delegate: MyCustomSliverHeaderDelegate(),
                pinned: false,
                floating: true,
              ),
            ];
          },
          body: TabBarView(
            children: [
              PhotosScreen(
                data: pofilecontroller.photos,
                isMine: true,
              ),
              FriendsScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
