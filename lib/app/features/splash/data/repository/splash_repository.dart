import 'package:chat_bird/app/abstraction/repository.dart';

abstract class SplashRepository extends Repository {
  SplashRepository(super.localDataStore, super.remoteDataStore);

  Future<void> setOnboardSeen();
  Future<bool> isOnboardSeen();
}
