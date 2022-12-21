import 'package:chat_bird/app/const/file_path_consts.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Image.asset(
          FilePath.SPLASH_SCREEN_IMAGE,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
