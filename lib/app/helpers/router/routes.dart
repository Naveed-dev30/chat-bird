import 'package:chat_bird/app/di/di.dart';
import 'package:chat_bird/app/features/splash/views/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GoRoutes {
  static final routes = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return SplashScreen(
            splashScreenBloc: DI.sl(),
          );
        },
      ),
    ],
  );
}
