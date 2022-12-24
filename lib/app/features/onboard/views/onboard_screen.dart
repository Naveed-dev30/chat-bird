import 'package:chat_bird/app/const/app_colors.dart';
import 'package:chat_bird/app/const/file_path_consts.dart';
import 'package:chat_bird/app/features/splash/blocs/splash_screen_bloc/splash_screen_bloc.dart';
import 'package:chat_bird/app/utils/extensions/on_num.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';

import '../../../utils/text_styles/heading_three/heading_three_text_style.dart';

class OnboardScreen extends StatelessWidget {
  OnboardScreen({super.key});

  final newBloc = GetIt.I.get<SplashScreenBloc>();

  @override
  Widget build(BuildContext context) {
    print(newBloc.isClosed);
    return Scaffold(
      backgroundColor: AppColors.grey37474F,
      body: SafeArea(
        child: SizedBox(
          width: 375.w,
          child: Column(
            children: [
              18.3.h.yBox,

              ///[Buddies Svg Picture]
              SizedBox(
                height: 70.25.h,
                width: 278.44.w,
                child: SvgPicture.asset(FilePath.BUDDIES_SVG_PICTURE),
              ),

              17.9.h.yBox,

              ///[Where we create connections]
              Text(
                'WHERE WE CREATE CONNECTIONS',
                style: HeadingThreeTextStyle(),
              ),

              43.h.yBox,

              ///[Onboard Images Pager View]
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10.w),
                width: 362.29.w,
                height: 373.18.h,
                child: PageView(
                  children: FilePath.onboardImages.map(
                    (onboardImage) {
                      return SvgPicture.asset(onboardImage);
                    },
                  ).toList(),
                ),
              ),

              20.2.h.yBox,
            ],
          ),
        ),
      ),
    );
  }
}
