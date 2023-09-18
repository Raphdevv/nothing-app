import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nothing_app/controllers/groupcontroller.dart';
import 'package:nothing_app/models/chatmassagemodel.dart';
import 'package:nothing_app/utils/colors.dart';
import 'package:nothing_app/utils/fonts.dart';

class GroupChatScreen extends StatefulWidget {
  const GroupChatScreen({super.key});

  @override
  State<GroupChatScreen> createState() => _GroupChatScreenState();
}

class _GroupChatScreenState extends State<GroupChatScreen> {
  final chatcontroller = Get.put(GroupChatController());

  GlobalKey<AnimatedListState> listKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: Scaffold(
        backgroundColor: AppColors.primary,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: GestureDetector(
            onTap: () => Get.back(),
            child: Icon(
              Icons.arrow_back_ios,
              color: AppColors.white,
            ),
          ),
          title: Text("Pimma", style: FontWhite.font20),
          backgroundColor: AppColors.primary,
        ),
        body: Column(
          children: [
            Flexible(
              child: AnimatedList(
                key: listKey,
                initialItemCount: chatcontroller.listChat.length,
                itemBuilder: (_, int index, Animation<double> animation) {
                  var messages = chatcontroller.listChat[index];
                  return SizeTransition(
                    sizeFactor: animation,
                    child: Padding(
                      padding: EdgeInsets.only(
                        bottom: chatcontroller.listChat.length - 1 == index
                            ? 20
                            : 0,
                        top: index == 0 ? 10 : 0,
                      ),
                      child: Container(
                        padding: const EdgeInsets.only(
                          left: 14,
                          right: 14,
                          top: 2,
                          bottom: 2,
                        ),
                        child: Align(
                          alignment: messages.messageType == "sender"
                              ? Alignment.topRight
                              : Alignment.topLeft,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: messages.messageType == "sender"
                                  ? AppColors.secondary.withOpacity(0.5)
                                  : AppColors.secondary,
                            ),
                            padding: const EdgeInsets.all(16),
                            child: Text(
                              messages.massage!,
                              style: FontWhite.font14,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              width: Get.width,
              decoration: BoxDecoration(
                color: AppColors.primary,
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: AppColors.secondary,
                    blurRadius: 6,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Flexible(
                    child: textComposr(),
                  ),
                  btnSender(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget textComposr() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextFormField(
        textAlign: TextAlign.start,
        keyboardType: TextInputType.text,
        onChanged: (value) {},
        onSaved: (value) {},
        validator: (value) {
          return null;
        },
        style: FontWhite.font14,
        decoration: InputDecoration(
          isDense: true,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          filled: true,
          fillColor: AppColors.secondary,
          hintText: 'พิมพ์ข้อความ..',
          hintStyle: FontWhite.font14,
          errorStyle: const TextStyle(height: 0),
          counterText: '',
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            borderSide: BorderSide(
              width: 2,
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            borderSide: BorderSide(
              width: 2,
            ),
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            borderSide: BorderSide(
              width: 2,
            ),
          ),
        ),
      ),
    );
  }

  ElevatedButton btnSender() {
    return ElevatedButton(
      onPressed: () {
        chatcontroller.listChat.add(
          ChatMassge(massage: "ทดสอบส่งข้อมูล", messageType: "sender"),
        );
        listKey.currentState?.insertItem(0);
        setState(() {});
      },
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
      ),
      child: const Icon(Icons.send),
    );
  }
}
