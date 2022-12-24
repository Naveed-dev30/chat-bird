import 'package:chat_bird/app/const/app_colors.dart';
import 'package:chat_bird/app/const/file_path_consts.dart';
import 'package:chat_bird/app/features/onboard/onboard_viewmodel.dart';
import 'package:chat_bird/app/helpers/router/paths.dart';
import 'package:chat_bird/app/helpers/router/router_helper.dart';
import 'package:chat_bird/app/utils/extensions/on_num.dart';
import 'package:chat_bird/app/utils/text_styles/heading_two/heading_two_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/text_styles/heading_three/heading_three_text_style.dart';
import '../../../utils/text_styles/text_1/text_one_textstyle.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({
    super.key,
    required this.viewModel,
    required this.navigation,
  });
  final OnboardScreenViewModel viewModel;
  final AppRouter navigation;

  void navigateToAuthScreen(BuildContext context) {
    navigation.replaceAll(context, RoutePaths.phoneAuth);
  }

  @override
  Widget build(BuildContext context) {
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
                  onPageChanged: viewModel.changePageIndex,
                  children: FilePath.onboardImages.map(
                    (onboardImage) {
                      return SvgPicture.asset(onboardImage);
                    },
                  ).toList(),
                ),
              ),

              20.2.h.yBox,

              ///[Page Title Description]
              ValueListenableBuilder(
                valueListenable: viewModel.pageViewCurrentIndex,
                builder: (context, pageIndex, child) {
                  var title = '';
                  var description = '';

                  if (pageIndex == 0) {
                    title = 'CONNECT ALL TIME';
                    description = 'connect all time';
                  } else if (pageIndex == 1) {
                    title = 'EASY CHATBOX';
                    description = 'easy chatbox';
                  } else {
                    title = 'MAKE FRIENDS';
                    description = 'make friends';
                  }

                  return Column(
                    children: [
                      Text(
                        title,
                        style: HeadingTwoTextStyle(),
                      ),
                      Text(
                        description,
                        style: TextOneTextStyle().copyWith(
                          color: AppColors.yellowFFC727,
                        ),
                      ),
                    ],
                  );
                },
              ),

              41.h.yBox,

              /// [Lets Start & Rounds]
              Container(
                margin: EdgeInsets.only(right: 9.3.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ///[Lets Start]
                    InkWell(
                      onTap: () => navigateToAuthScreen(context),
                      child: Text(
                        'Let\'s Start  -->',
                        style: TextOneTextStyle().copyWith(
                          color: AppColors.yellowFFC727,
                        ),
                      ),
                    ),
                    25.7.h.yBox,

                    ///[Rounds]
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [0, 1, 2]
                          .map(
                            (i) => ValueListenableBuilder(
                              valueListenable: viewModel.pageViewCurrentIndex,
                              builder: (context, pageIndex, _) {
                                return Container(
                                  margin: EdgeInsets.symmetric(horizontal: 5.w),
                                  width: 8.r,
                                  height: 8.r,
                                  decoration: BoxDecoration(
                                    color: pageIndex == i ? AppColors.yellowFFC727 : AppColors.whiteFFFFFF,
                                    borderRadius: BorderRadius.circular(8.r),
                                  ),
                                );
                              },
                            ),
                          )
                          .toList(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
