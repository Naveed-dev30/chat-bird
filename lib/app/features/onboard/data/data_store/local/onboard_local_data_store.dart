import '../../../../../abstraction/local_data_store.dart';

abstract class OnboardLocalDataStore extends LocalDataStore {
  OnboardLocalDataStore(super.persistanceHelper);

  Future<void> setOnboardSeen();
}
