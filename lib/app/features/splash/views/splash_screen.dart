import 'package:chat_bird/app/const/file_path_consts.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(FilePath.SPLASH_SCREEN_IMAGE),
      ),
    );
  }
}
