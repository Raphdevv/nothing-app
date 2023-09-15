import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:nothing_app/utils/colors.dart';
import 'package:nothing_app/utils/fonts.dart';
import 'package:nothing_app/views/bottomnav.dart/bottomnavscreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    openHome();
    super.initState();
  }

  openHome() async {
    await Future.delayed(const Duration(seconds: 2), () {
      Get.to(
        () => const BottomNavScreen(),
        transition: Transition.cupertino,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primary,
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                AppColors.secondary,
                AppColors.secondary,
                AppColors.secondary,
                AppColors.primary,
                AppColors.primary,
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(),
                    SvgPicture.asset(
                      "assets/icon/ic_nothing_trans.svg",
                      width: Get.width * 0.1,
                      height: Get.height * 0.1,
                    ),
                    SizedBox(width: Get.width * 0.07),
                    Text(
                      "N O T H I N G",
                      style: FontWhite.font20Bold,
                    ),
                    const Spacer(),
                  ],
                ),
              ),
              const Spacer(),
              CircularProgressIndicator(
                color: AppColors.white,
                backgroundColor: AppColors.primary,
              ),
              SizedBox(
                height: Get.height * 0.1,
              )
            ],
          ),
        ));
  }
}
