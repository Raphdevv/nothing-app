import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nothing_app/utils/colors.dart';
import 'package:nothing_app/utils/fonts.dart';
import 'package:nothing_app/views/chats/chatscreen.dart';

class ListGroupChatScreen extends StatelessWidget {
  const ListGroupChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.secondary,
        title: Text("N O T H I N G", style: FontWhite.font16),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return Card(
            color: AppColors.secondary,
            child: ListTile(
              onTap: () {
                Get.to(
                  () => const ChatScreen(),
                  transition: Transition.cupertino,
                );
              },
              leading: const CircleAvatar(
                radius: 24,
                backgroundImage: NetworkImage(
                  "https://i.pinimg.com/564x/df/04/ba/df04ba440e5cc82a016d35c2458ca63e.jpg",
                ),
              ),
              title: Text(
                "กลุ่ม: ${index + 1}",
                style: FontWhite.font16,
              ),
              subtitle: Text(
                "ชอบนะคะ ><",
                style: FontWhite.font12,
              ),
              trailing: Text(
                "09:54",
                style: FontWhite.font12,
              ),
            ),
          );
        },
      ),
    );
  }
}
