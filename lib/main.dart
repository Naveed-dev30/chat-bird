import 'package:chat_bird/app/di/di.dart';
import 'package:chat_bird/app/const/file_path_consts.dart';
import 'package:flutter/material.dart';

import 'app/helpers/env/env_helper.dart';

Future<void> main() async {
  DI.inject();
  await DI.sl<Env>().load(envFilePath: FilePath.ENV_PATH);

  runApp(ChatBirdApp());
}

class ChatBirdApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(),
    );
  }
}
