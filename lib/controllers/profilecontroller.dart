import 'package:get/get.dart';

class ProfileController extends GetxController {
  var photos = [
    "https://i.pinimg.com/564x/cf/72/fc/cf72fc6f7fa271e18b994453bbd3c99c.jpg",
    "https://i.pinimg.com/564x/8c/1f/9f/8c1f9f214adc96364acbb9792dbbb8c9.jpg",
    "https://i.pinimg.com/564x/df/04/ba/df04ba440e5cc82a016d35c2458ca63e.jpg",
    "https://i.pinimg.com/564x/4c/eb/2e/4ceb2e108b580d24e9a820540e66b6b2.jpg",
    "https://i.pinimg.com/564x/a5/90/95/a59095b78b95210a78eff584f919d327.jpg",
    "https://i.pinimg.com/564x/99/78/5a/99785ac3b7b77c9f67dbb3e2d587a281.jpg",
  ];

  List<Map<String, dynamic>> friends = [
    {
      "username": "pimma",
      "decs": "pimma pixxie",
      "img":
          "https://i.pinimg.com/564x/86/6a/c4/866ac455f9306112a7c38e899b35da75.jpg",
      "friends": "2",
      "photos": <String>[
        "https://i.pinimg.com/564x/03/c4/55/03c45533adc0c3914f35bb8684aebf25.jpg",
        "https://i.pinimg.com/564x/32/8d/05/328d05e09a377ce5e623348f11362e99.jpg",
        "https://i.pinimg.com/564x/26/ed/76/26ed76671f53c74885c671720272326a.jpg",
      ]
    },
    {
      "username": "ingko",
      "decs": "ingko pixxie",
      "img":
          "https://i.pinimg.com/564x/81/91/44/8191446cd1fd21cce3978588c49311b6.jpg",
      "friends": "2",
      "photos": <String>[
        "https://i.pinimg.com/564x/3a/39/47/3a3947f40bad7497e7c4e21743c15fd1.jpg",
        "https://i.pinimg.com/564x/14/3e/5a/143e5a286d36488c59dcf642a117c420.jpg",
        "https://i.pinimg.com/564x/e0/7f/e5/e07fe50b5838bccf18199b2372f1ab34.jpg",
        "https://i.pinimg.com/564x/cb/d0/ed/cbd0ed85bbcb79194df74738a3625513.jpg",
        "https://i.pinimg.com/564x/94/62/83/9462836a46321fc03abb85c91046749f.jpg",
        "https://i.pinimg.com/564x/09/25/9c/09259c936d8361d96a001dac140bd231.jpg",
      ],
    },
  ];
}
