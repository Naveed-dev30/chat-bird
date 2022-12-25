import 'package:chat_bird/app/const/file_path_consts.dart';
import 'package:chat_bird/app/features/splash/blocs/splash_screen_bloc/splash_screen_bloc.dart';
import 'package:chat_bird/app/features/splash/blocs/splash_screen_bloc/splash_screen_bloc_states.dart';
import 'package:chat_bird/app/features/splash/splash_view_model.dart';
import 'package:chat_bird/app/helpers/router/paths.dart';
import 'package:chat_bird/app/helpers/router/router_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  final SplashScreenViewModel splashScreenViewModel;
  final AppRouter navigation;

  const SplashScreen({
    super.key,
    required this.splashScreenViewModel,
    required this.navigation,
  });

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    viewModel.splashScreenAppeared();
  }

  @override
  void dispose() {
    viewModel.dispose();
    super.dispose();
  }

  SplashScreenViewModel get viewModel => widget.splashScreenViewModel;
  AppRouter get navigation => widget.navigation;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: viewModel.splashScreenBloc,
      child: Scaffold(
        body: SizedBox(
          height: 812.h,
          width: 375.w,
          child: Stack(
            children: [
              BlocConsumer<SplashScreenBloc, SplashScreenBlocState>(
                listener: (context, state) => viewModel.splashScreenBloc,
                builder: (context, state) {
                  return AnimatedPositioned(
                    onEnd: () {
                      if (state is SplashScreenBlocMoveToOnboardState) {
                        navigation.replaceAll(context, RoutePaths.onboard);
                      } else if (state is SplashScreenBlocMoveToAuthState) {
                        navigation.replaceAll(context, RoutePaths.phoneAuth);
                      }
                    },
                    curve: Curves.fastOutSlowIn,
                    duration: const Duration(seconds: 1),
                    top: state is SplashScreenBlocInitialState ? 0.h : 812.h,
                    child: SizedBox(
                      height: 812.h,
                      width: 375.w,
                      child: Image.asset(
                        FilePath.SPLASH_SCREEN_IMAGE,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
