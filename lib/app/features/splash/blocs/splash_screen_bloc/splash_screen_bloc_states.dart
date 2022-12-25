abstract class SplashScreenBlocState {}

class SplashScreenBlocInitialState extends SplashScreenBlocState {}

class SplashScreenBlocMoveToOnboardState extends SplashScreenBlocState {
  @override
  bool operator ==(Object other) {
    return other is SplashScreenBlocMoveToOnboardState;
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

class SplashScreenBlocMoveToAuthState extends SplashScreenBlocState {
  @override
  bool operator ==(Object other) {
    return other is SplashScreenBlocMoveToAuthState;
  }

  @override
  int get hashCode => runtimeType.hashCode;
}
