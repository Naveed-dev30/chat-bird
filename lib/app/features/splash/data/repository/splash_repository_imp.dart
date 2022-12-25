import 'package:chat_bird/app/abstraction/remote_data_store.dart';
import 'package:chat_bird/app/features/splash/data/data_store/local/splash_local_data_store.dart';
import 'package:chat_bird/app/features/splash/data/repository/splash_repository.dart';

class SplashRepositoryImp implements SplashRepository {
  @override
  late final RemoteDataStore remoteDataStore;

  @override
  late final SplashLocalDataStore localDataStore;

  SplashRepositoryImp(this.localDataStore, this.remoteDataStore);

  @override
  Future<void> setOnboardSeen() {
    throw UnimplementedError();
  }

  @override
  Future<bool> isOnboardSeen() {
    throw UnimplementedError();
  }
}
