import 'package:chat_bird/app/di/di.dart';
import 'package:chat_bird/app/features/splash/blocs/splash_screen_bloc/splash_screen_bloc.dart';

import 'blocs/splash_screen_bloc/splash_screen_bloc_events.dart';

class SplashScreenViewModel {
  final SplashScreenBloc splashScreenBloc;

  SplashScreenViewModel({required this.splashScreenBloc});

  void splashScreenAppeared() {
    splashScreenBloc.add(SplashScreenAppearedBlocEvent());
  }

  void dispose() {
    splashScreenBloc.close();
    DI.reset<SplashScreenBloc>();
  }
}
