import 'package:flutter/material.dart';

import 'package:chat_bird/app/helpers/router/router_helper.dart';
import 'package:chat_bird/app/const/file_path_consts.dart';
import 'package:chat_bird/app/di/di.dart';

import 'app/helpers/env/env_helper.dart';

Future<void> main() async {
  DI.inject();
  await DI.sl<Env>().load(envFilePath: FilePath.ENV_PATH);

  runApp(const ChatBirdApp());
}

class ChatBirdApp extends StatelessWidget {
  const ChatBirdApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: DI.sl<AppRouter>().routerConfig,
    );
  }
}
