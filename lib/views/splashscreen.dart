import 'package:flutter/material.dart';
import 'package:nothing_app/utils/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Stack(
          children: [
            Container(
              width: 180,
              height: 180,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: CircularProgressIndicator(
                strokeWidth: 6,
                color: AppColors.primary,
                backgroundColor: AppColors.white,
              ),
            ),
            Positioned(
              child: Image.asset(
                'assets/icon/ic_nothing_trans.png',
                height: 80,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
