import 'package:chat_bird/app/di/di.dart';
import 'package:get_it/get_it.dart';

import '../data/data_store/local/onboard_local_data_store.dart';
import '../data/data_store/local/onboard_local_data_store_impl.dart';
import '../data/repository/onboard_repository.dart';
import '../data/repository/onboard_repository_imp.dart';
import '../data/usecases/set_onboard_seen_usecase.dart';
import '../onboard_viewmodel.dart';

class OnboardFeatureDi {
  OnboardFeatureDi._();

  static final _sl = DI.sl;

  static void inject() {
    ///[ViewModel]
    GetIt.I.registerLazySingleton(
      () => OnboardScreenViewModel(_sl()),
    );

    ///[Usecases]
    GetIt.I.registerLazySingleton(
      () => SetOnboardSeenUsecase(_sl()),
    );

    ///[Repository]
    GetIt.I.registerLazySingleton<OnboardRepository>(
      () => OnboardRepositoryImp(_sl(), _sl()),
    );

    ///[LocalDataStore]
    GetIt.I.registerLazySingleton<OnboardLocalDataStore>(
      () => OnboardLocalDataStoreImpl(_sl()),
    );
  }
}
