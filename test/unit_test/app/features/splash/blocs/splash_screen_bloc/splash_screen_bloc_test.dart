import 'package:bloc_test/bloc_test.dart';
import 'package:chat_bird/app/features/splash/blocs/splash_screen_bloc/splash_screen_bloc.dart';
import 'package:chat_bird/app/features/splash/blocs/splash_screen_bloc/splash_screen_bloc_events.dart';
import 'package:chat_bird/app/features/splash/blocs/splash_screen_bloc/splash_screen_bloc_states.dart';
import 'package:chat_bird/app/features/splash/data/repository/splash_repository.dart';
import 'package:chat_bird/app/features/splash/data/usecases/is_onboard_seen_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../../../../mocks/repository/splash_repository/splash_repository_mock.mocks.dart';

void main() {
  late final IsOnboardSeenUsecase isOnboardSeenUsecase;
  late final SplashRepository splashRepository;

  setUpAll(() {
    splashRepository = MockSplashRepository();
    isOnboardSeenUsecase = IsOnboardSeenUsecase(splashRepository);
  });

  SplashScreenBloc buildBloc() {
    return SplashScreenBloc(
      isOnboardSeenUsecase,
    );
  }

  group('Splash Bloc Tests', () {
    test('InitalState of bloc should be SplashScreenBlocInitialState', () {
      final bloc = buildBloc();

      expect(bloc.state.runtimeType, SplashScreenBlocInitialState);
    });
    blocTest(
      'When SplashScreenAppearedBlocEvent is added, after 3 seconds check if onboard not seen, SplashScreenBlocMoveToOnboardState should emitted',
      build: () => buildBloc(),
      act: (bloc) {
        when(splashRepository.isOnboardSeen()).thenAnswer((realInvocation) async => false);
        bloc.add(SplashScreenAppearedBlocEvent());
      },
      expect: () => [SplashScreenBlocMoveToOnboardState()],
      wait: const Duration(seconds: 3),
    );

    blocTest(
      'When SplashScreenAppearedBlocEvent is added, after 3 seconds check if onboard not seen, SplashScreenBlocMoveToOnboardState should emitted',
      build: () => buildBloc(),
      act: (bloc) {
        when(splashRepository.isOnboardSeen()).thenAnswer((realInvocation) async => true);
        bloc.add(SplashScreenAppearedBlocEvent());
      },
      expect: () => [SplashScreenBlocMoveToAuthState()],
      wait: const Duration(seconds: 3),
    );
  });
}
