import 'package:chat_bird/app/abstraction/local_data_store.dart';
import 'package:chat_bird/app/abstraction/remote_data_store.dart';
import 'package:chat_bird/app/features/splash/di/splash_di.dart';
import 'package:chat_bird/app/helpers/env/env_helper.dart';
import 'package:chat_bird/app/helpers/persistance_helper/persistance_helper.dart';
import 'package:chat_bird/app/helpers/router/router_helper.dart';
import 'package:get_it/get_it.dart';

import '../features/onboard/di/onboard_di.dart';

class DI {
  DI._internal();

  static GetIt get sl => GetIt.I;

  static void reset<T extends Object>() {
    GetIt.I.resetLazySingleton<T>();
  }

  static void inject() {
    /// [Helpers]
    GetIt.I.registerLazySingleton<Env>(() => DotEnvHelper());
    GetIt.I.registerLazySingleton<AppRouter>(() => GoRouterHelper());
    GetIt.I.registerLazySingleton<PersistanceHelper>(() => HivePersistance());

    /// [Features]
    OnboardFeatureDi.inject();
    SplashFeatureDI.inject();

    /// [DataStores]
    ///
    /// [NoDataStore Object]
    GetIt.I.registerLazySingleton<NoRemoteDataStore>(
      () => NoRemoteDataStore(),
    );

    GetIt.I.registerLazySingleton<NoLocalDataStore>(
      () => NoLocalDataStore(sl()),
    );
  }
}
