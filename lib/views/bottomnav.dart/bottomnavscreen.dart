import 'package:flutter/material.dart';
import 'package:nothing_app/utils/colors.dart';
import 'package:nothing_app/utils/fonts.dart';
import 'package:nothing_app/views/chats/listchat.dart';
import 'package:nothing_app/views/groupchats/listgroup.dart';
import 'package:nothing_app/views/profile/profilescreen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> widgetOptions = <Widget>[
    ListChatScreen(),
    ListGroupChatScreen(),
    ProfileScreen(),
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: widgetOptions.elementAt(selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: AppColors.secondary,
              blurRadius: 6,
            ),
          ],
        ),
        child: BottomNavigationBar(
          elevation: 0,
          backgroundColor: AppColors.primary,
          selectedIconTheme: const IconThemeData(opacity: 0.0, size: 0),
          unselectedIconTheme: const IconThemeData(opacity: 0.0, size: 0),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: <BottomNavigationBarItem>[
            iconNav("Chat", selectedIndex, 0),
            iconNav("Group", selectedIndex, 1),
            iconNav("Profile", selectedIndex, 2),
          ],
          currentIndex: selectedIndex,
          unselectedItemColor: AppColors.secondary,
          selectedItemColor: AppColors.white,
          onTap: onItemTapped,
        ),
      ),
    );
  }

  BottomNavigationBarItem iconNav(String label, index, ready) {
    return BottomNavigationBarItem(
      backgroundColor: Colors.transparent,
      tooltip: label,
      icon: Container(
        decoration: BoxDecoration(
          color: index == ready ? AppColors.secondary : AppColors.primary,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: Text(
            label,
            style: FontWhite.font12,
          ),
        ),
      ),
      label: label,
    );
  }
}
