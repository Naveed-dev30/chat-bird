import 'package:chat_bird/app/helpers/env/env_helper.dart';
import 'package:get_it/get_it.dart';

class DI {
  DI._internal();

  static GetIt get sl => GetIt.I;

  static void inject() {
    /// [Helpers]
    GetIt.I.registerLazySingleton<Env>(() => DotEnvHelper());
  }
}
