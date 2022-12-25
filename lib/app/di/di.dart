import 'package:chat_bird/app/abstraction/local_data_store.dart';
import 'package:chat_bird/app/abstraction/remote_data_store.dart';
import 'package:chat_bird/app/features/onboard/data/data_store/local/onboard_local_data_store.dart';
import 'package:chat_bird/app/features/onboard/data/data_store/local/onboard_local_data_store_impl.dart';
import 'package:chat_bird/app/features/onboard/data/repository/onboard_repository_imp.dart';
import 'package:chat_bird/app/features/onboard/onboard_viewmodel.dart';
import 'package:chat_bird/app/features/splash/blocs/splash_screen_bloc/splash_screen_bloc.dart';
import 'package:chat_bird/app/features/splash/data/data_store/local/splash_local_data_store.dart';
import 'package:chat_bird/app/features/splash/data/data_store/local/splash_local_data_store_impl.dart';
import 'package:chat_bird/app/features/splash/data/repository/splash_repository.dart';
import 'package:chat_bird/app/features/splash/data/repository/splash_repository_imp.dart';
import 'package:chat_bird/app/features/splash/data/usecases/is_onboard_seen_usecase.dart';
import 'package:chat_bird/app/features/onboard/data/usecases/set_onboard_seen_usecase.dart';
import 'package:chat_bird/app/features/splash/splash_view_model.dart';
import 'package:chat_bird/app/helpers/env/env_helper.dart';
import 'package:chat_bird/app/helpers/persistance_helper/persistance_helper.dart';
import 'package:chat_bird/app/helpers/router/router_helper.dart';
import 'package:get_it/get_it.dart';

import '../features/onboard/data/repository/onboard_repository.dart';

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

    /// [ViewModels]
    ///
    /// [SplashFeature]
    GetIt.I.registerLazySingleton(() => SplashScreenViewModel(
          splashScreenBloc: sl(),
        ));

    /// [OnboardFeature]
    GetIt.I.registerLazySingleton(
      () => OnboardScreenViewModel(sl()),
    );

    /// [Blocs]
    ///
    /// [Splash Feature]
    GetIt.I.registerLazySingleton<SplashScreenBloc>(
      () => SplashScreenBloc(sl()),
    );

    /// [Usecases]
    ///
    /// [Splash Feature Usecases]
    GetIt.I.registerLazySingleton(
      () => IsOnboardSeenUsecase(sl()),
    );

    GetIt.I.registerLazySingleton(
      () => SetOnboardSeenUsecase(sl()),
    );

    /// [Repositories]
    ///
    /// [Splash Feature]
    GetIt.I.registerLazySingleton<SplashRepository>(
      () => SplashRepositoryImp(sl(), sl()),
    );

    /// [Onboard Feature]
    GetIt.I.registerLazySingleton<OnboardRepository>(
      () => OnboardRepositoryImp(sl(), sl()),
    );

    /// [DataStores]
    ///
    /// [NoDataStore Object]
    GetIt.I.registerLazySingleton<NoRemoteDataStore>(
      () => NoRemoteDataStore(),
    );

    GetIt.I.registerLazySingleton<NoLocalDataStore>(
      () => NoLocalDataStore(sl()),
    );

    /// [Splash Feature]
    GetIt.I.registerLazySingleton<SplashLocalDataStore>(
      () => SplashLocalDataStoreImpl(sl()),
    );

    /// [Onboard Feature]
    GetIt.I.registerLazySingleton<OnboardLocalDataStore>(
      () => OnboardLocalDataStoreImpl(sl()),
    );
  }
}
