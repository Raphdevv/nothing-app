import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nothing_app/utils/colors.dart';
import 'package:nothing_app/utils/fonts.dart';
import 'package:nothing_app/views/chatscreen/chatscreen.dart';

class ListChatScreen extends StatelessWidget {
  const ListChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.primary,
        title: Text("N O T H I N G", style: FontWhite.font16),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            color: AppColors.secondary,
            child: ListTile(
              onTap: () {
                Get.to(
                  () => ChatScreen(),
                  transition: Transition.cupertino,
                );
              },
              leading: const CircleAvatar(
                radius: 24,
                backgroundImage: NetworkImage(
                  "https://i.pinimg.com/564x/86/6a/c4/866ac455f9306112a7c38e899b35da75.jpg",
                ),
              ),
              title: Text(
                "title: ${index + 1}",
                style: FontWhite.font16,
              ),
              subtitle: Text(
                "sub: ${index + 1}",
                style: FontWhite.font12,
              ),
              trailing: Text(
                "times..",
                style: FontWhite.font12,
              ),
            ),
          );
        },
      ),
    );
  }
}
