import 'package:bloc/bloc.dart';
import 'package:chat_bird/app/abstraction/usecase_params.dart';
import 'package:chat_bird/app/features/splash/blocs/splash_screen_bloc/splash_screen_bloc_events.dart';
import 'package:chat_bird/app/features/splash/blocs/splash_screen_bloc/splash_screen_bloc_states.dart';
import 'package:chat_bird/app/features/splash/data/usecases/is_onboard_seen_usecase.dart';

class SplashScreenBloc extends Bloc<SplashScreenBlocEvent, SplashScreenBlocState> {
  final IsOnboardSeenUsecase isOnboardSeenUsecase;

  SplashScreenBloc(this.isOnboardSeenUsecase) : super(SplashScreenBlocInitialState()) {
    on<SplashScreenAppearedBlocEvent>(_splashScreenAppearedHandler);
  }

  Future<void> _splashScreenAppearedHandler(SplashScreenBlocEvent event, Emitter<SplashScreenBlocState> emit) async {
    await Future.delayed(const Duration(seconds: 3));
    if (await isOnboardSeenUsecase.call(NoParams())) {
      emit(SplashScreenBlocMoveToAuthState());
    } else {
      emit(SplashScreenBlocMoveToOnboardState());
    }
  }
}
