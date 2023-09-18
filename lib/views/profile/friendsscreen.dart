import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nothing_app/controllers/profilecontroller.dart';
import 'package:nothing_app/utils/colors.dart';
import 'package:nothing_app/utils/fonts.dart';
import 'package:nothing_app/views/friends/friendprofile.dart';

class FriendsScreen extends StatelessWidget {
  FriendsScreen({super.key});
  final pofilecontroller = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: Get.height * 0.02),
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
                Icons.group_add_rounded,
                color: AppColors.white,
              ),
            ),
          ),
        ),
        SizedBox(height: Get.height * 0.01),
        Flexible(
          child: ListView.builder(
            itemCount: pofilecontroller.friends.length,
            itemBuilder: (context, index) {
              var data = pofilecontroller.friends[index];
              return Card(
                color: AppColors.secondary,
                child: ListTile(
                  onTap: () {
                    Get.to(
                      () => FriendProfileScreen(
                        data: data,
                      ),
                      transition: Transition.cupertino,
                    );
                  },
                  leading: CircleAvatar(
                    radius: 24,
                    backgroundImage: NetworkImage(
                      data["img"],
                    ),
                  ),
                  title: Text(
                    data["username"],
                    style: FontWhite.font16,
                  ),
                  subtitle: Text(
                    data["decs"],
                    style: FontWhite.font12,
                  ),
                  // trailing: IconButton(
                  //   icon: Icon(
                  //     Icons.navigate_next_rounded,
                  //     color: AppColors.white,
                  //   ),
                  //   onPressed: () {},
                  // ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
