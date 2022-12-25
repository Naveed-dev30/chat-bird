import 'package:chat_bird/app/di/di.dart';
import 'package:get_it/get_it.dart';

import '../blocs/splash_screen_bloc/splash_screen_bloc.dart';
import '../data/data_store/local/splash_local_data_store.dart';
import '../data/data_store/local/splash_local_data_store_impl.dart';
import '../data/repository/splash_repository.dart';
import '../data/repository/splash_repository_imp.dart';
import '../data/usecases/is_onboard_seen_usecase.dart';
import '../splash_view_model.dart';

class SplashFeatureDI {
  SplashFeatureDI._();

  static final _sl = DI.sl;

  static void inject() {
    ///[ViewModel]
    GetIt.I.registerLazySingleton(() => SplashScreenViewModel(
          splashScreenBloc: _sl(),
        ));

    ///[Blocs]
    GetIt.I.registerLazySingleton<SplashScreenBloc>(
      () => SplashScreenBloc(_sl()),
    );

    ///[Usecases]
    GetIt.I.registerLazySingleton(
      () => IsOnboardSeenUsecase(_sl()),
    );

    /// [Repository]
    GetIt.I.registerLazySingleton<SplashRepository>(
      () => SplashRepositoryImp(_sl(), _sl()),
    );

    /// [DataStore]
    GetIt.I.registerLazySingleton<SplashLocalDataStore>(
      () => SplashLocalDataStoreImpl(_sl()),
    );
  }
}
