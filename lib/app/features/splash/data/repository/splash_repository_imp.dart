import 'package:chat_bird/app/abstraction/remote_data_store.dart';
import 'package:chat_bird/app/exceptions/persistance_exceptions.dart';
import 'package:chat_bird/app/features/splash/data/data_store/local/splash_local_data_store.dart';
import 'package:chat_bird/app/features/splash/data/repository/splash_repository.dart';

class SplashRepositoryImp implements SplashRepository {
  @override
  late final NoRemoteDataStore remoteDataStore;

  @override
  late final SplashLocalDataStore localDataStore;

  SplashRepositoryImp(this.localDataStore, this.remoteDataStore);

  @override
  Future<bool> isOnboardSeen() async {
    try {
      return await localDataStore.isOnboardSeen();
    } on NoPersistedValueFoundException {
      return false;
    }
  }
}
