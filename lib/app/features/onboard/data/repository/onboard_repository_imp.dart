import 'package:chat_bird/app/abstraction/remote_data_store.dart';
import 'package:chat_bird/app/features/onboard/data/data_store/local/onboard_local_data_store.dart';
import 'package:chat_bird/app/features/onboard/data/repository/onboard_repository.dart';

class OnboardRepositoryImp implements OnboardRepository {
  OnboardRepositoryImp(this.localDataStore, this.remoteDataStore);

  @override
  late final OnboardLocalDataStore localDataStore;

  @override
  late final NoRemoteDataStore remoteDataStore;

  @override
  Future<void> setOnboardSeen() async {
    await localDataStore.setOnboardSeen();
  }
}
