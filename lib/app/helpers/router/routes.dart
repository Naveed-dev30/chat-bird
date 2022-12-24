import 'package:chat_bird/app/di/di.dart';
import 'package:chat_bird/app/features/onboard/views/onboard_screen.dart';
import 'package:chat_bird/app/features/splash/views/splash_screen.dart';
import 'package:chat_bird/app/helpers/router/paths.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GoRoutes {
  static final routes = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: RoutePaths.initial,
        builder: (BuildContext context, GoRouterState state) {
          return SplashScreen(
            splashScreenViewModel: DI.sl(),
            navigation: DI.sl(),
          );
        },
      ),
      GoRoute(
        path: RoutePaths.onboard,
        builder: (BuildContext context, GoRouterState state) {
          return OnboardScreen();
        },
      ),
    ],
  );
}
