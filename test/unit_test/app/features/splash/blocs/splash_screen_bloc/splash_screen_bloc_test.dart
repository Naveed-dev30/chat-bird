import 'package:bloc_test/bloc_test.dart';
import 'package:chat_bird/app/features/splash/blocs/splash_screen_bloc/splash_screen_bloc.dart';
import 'package:chat_bird/app/features/splash/blocs/splash_screen_bloc/splash_screen_bloc_events.dart';
import 'package:chat_bird/app/features/splash/blocs/splash_screen_bloc/splash_screen_bloc_states.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  SplashScreenBloc buildBloc() {
    return SplashScreenBloc();
  }

  test('InitalState of bloc should be SplashScreenBlocInitialState', () {
    final bloc = buildBloc();

    expect(bloc.state.runtimeType, SplashScreenBlocInitialState);
  });

  blocTest(
    'When SplashScreenAppearedBlocEvent is added, after 3 seconds SplashScreenBlocMoveToNextScreenState should emitted',
    build: () => buildBloc(),
    act: (bloc) => bloc.add(SplashScreenAppearedBlocEvent()),
    expect: () => [SplashScreenBlocMoveToNextScreenState()],
    wait: const Duration(seconds: 3),
  );
}
