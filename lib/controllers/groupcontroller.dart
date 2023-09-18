import 'package:get/get.dart';
import 'package:nothing_app/models/chatmassagemodel.dart';

class GroupChatController extends GetxController {
  var listChat = <ChatMassge>[
    ChatMassge(massage: "สวัสดี", messageType: "sender"),
    ChatMassge(massage: "ค่ะ สวัสดีค่ะ", messageType: "receiver"),
    ChatMassge(
        massage: "ชื่อพิมมาใช่ไหมครับ? ผมเต็กนะครับ", messageType: "sender"),
    ChatMassge(massage: "ค่ะ", messageType: "receiver"),
    ChatMassge(massage: "มีอะไรหรือป่าวคะ?", messageType: "receiver"),
    ChatMassge(massage: "ป่าวครับ แค่ทักทายครับ", messageType: "sender"),
    ChatMassge(massage: "อ๋อ ค่ะ", messageType: "receiver"),
    ChatMassge(massage: "ชอบนะคะ ><", messageType: "receiver"),
  ];
}
