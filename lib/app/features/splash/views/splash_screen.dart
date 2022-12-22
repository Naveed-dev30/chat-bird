import 'package:chat_bird/app/const/file_path_consts.dart';
import 'package:chat_bird/app/features/splash/blocs/splash_screen_bloc/splash_screen_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  final SplashScreenBloc splashScreenBloc;
  const SplashScreen({
    super.key,
    required this.splashScreenBloc,
  });

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    widget.splashScreenBloc.close();
    super.dispose();
  }

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
