import 'package:chat_bird/app/abstraction/repository.dart';

abstract class OnboardRepository extends Repository {
  OnboardRepository(super.localDataStore, super.remoteDataStore);

  Future<void> setOnboardSeen();
}
