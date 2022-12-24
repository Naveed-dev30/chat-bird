abstract class SplashScreenBlocState {}

class SplashScreenBlocInitialState extends SplashScreenBlocState {}

class SplashScreenBlocMoveToNextScreenState extends SplashScreenBlocState {
  @override
  bool operator ==(Object other) {
    return other is SplashScreenBlocMoveToNextScreenState;
  }

  @override
  int get hashCode => runtimeType.hashCode;
}
