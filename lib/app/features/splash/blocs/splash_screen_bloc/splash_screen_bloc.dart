import 'package:bloc/bloc.dart';
import 'package:chat_bird/app/features/splash/blocs/splash_screen_bloc/splash_screen_bloc_events.dart';
import 'package:chat_bird/app/features/splash/blocs/splash_screen_bloc/splash_screen_bloc_states.dart';

class SplashScreenBloc extends Bloc<SplashScreenBlocEvent, SplashScreenBlocState> {
  SplashScreenBloc() : super(SplashScreenBlocInitialState()) {
    on<SplashScreenAppearedBlocEvent>(_splashScreenAppearedHandler);
  }

  Future<void> _splashScreenAppearedHandler(SplashScreenBlocEvent event, Emitter<SplashScreenBlocState> emit) async {
    await Future.delayed(const Duration(seconds: 3));
    emit(SplashScreenBlocMoveToNextScreenState());
  }
}
