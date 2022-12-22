import 'package:chat_bird/app/helpers/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  void push(BuildContext context, String routeName);
  void pop(BuildContext context);

  RouterConfig<Object>? get routerConfig;
}

/// [Routing with GoRouter package]
class GoRouterHelper implements AppRouter {
  @override
  void push(BuildContext context, String location) {
    context.push(location);
  }

  @override
  void pop(BuildContext context) {
    context.pop();
  }

  @override
  RouterConfig<Object>? get routerConfig => GoRoutes.routes;
}
