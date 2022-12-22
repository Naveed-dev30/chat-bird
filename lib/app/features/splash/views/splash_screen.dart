import 'package:chat_bird/app/const/file_path_consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 812.h,
        width: 375.w,
        child: Image.asset(
          FilePath.SPLASH_SCREEN_IMAGE,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
