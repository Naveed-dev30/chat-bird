import '../../../../../abstraction/local_data_store.dart';

abstract class SplashLocalDataStore extends LocalDataStore {
  SplashLocalDataStore(super.persistanceHelper);

  Future<bool> isOnboardSeen();
}
