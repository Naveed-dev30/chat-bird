import 'package:chat_bird/app/features/onboard/onboard_viewmodel.dart';
import 'package:chat_bird/app/features/splash/blocs/splash_screen_bloc/splash_screen_bloc.dart';
import 'package:chat_bird/app/features/splash/splash_view_model.dart';
import 'package:chat_bird/app/helpers/env/env_helper.dart';
import 'package:chat_bird/app/helpers/router/router_helper.dart';
import 'package:get_it/get_it.dart';

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

    /// [ViewModels]
    GetIt.I.registerLazySingleton(() => SplashScreenViewModel(
          splashScreenBloc: sl(),
        ));

    GetIt.I.registerLazySingleton(() => OnboardScreenViewModel());

    /// [Blocs]
    ///
    /// [Splash Screen]
    GetIt.I.registerLazySingleton<SplashScreenBloc>(() => SplashScreenBloc());
  }
}
