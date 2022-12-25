import 'package:flutter/material.dart';

import 'package:chat_bird/app/helpers/router/router_helper.dart';
import 'package:chat_bird/app/const/file_path_consts.dart';
import 'package:chat_bird/app/di/di.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app/helpers/env/env_helper.dart';
import 'app/helpers/persistance_helper/persistance_helper.dart';
import 'app/helpers/remote_db_helper/remote_db_helper.dart';

Future<void> main() async {
  DI.inject();
  await DI.sl<Env>().load(envFilePath: FilePath.ENV_PATH);
  await DI.sl<PersistanceHelper>().initialise();
  await DI.sl<RemoteDBHelper>().initialize();
  runApp(const ChatBirdApp());
}

class ChatBirdApp extends StatelessWidget {
  const ChatBirdApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, _) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: DI.sl<AppRouter>().routerConfig,
        );
      },
    );
  }
}
