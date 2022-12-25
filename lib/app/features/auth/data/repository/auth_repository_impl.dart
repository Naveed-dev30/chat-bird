import 'package:chat_bird/app/abstraction/local_data_store.dart';
import 'package:chat_bird/app/features/auth/data/data_stores/remote/auth_remote_data_store.dart';
import 'package:chat_bird/app/features/auth/data/repository/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  @override
  late final NoLocalDataStore localDataStore;

  @override
  late final AuthRemoteDataStore remoteDataStore;

  AuthRepositoryImpl(this.localDataStore, this.remoteDataStore);

  @override
  Future<void> sendSmsToken(String phoneNumber) async {
    await remoteDataStore.sendSmsToken(phoneNumber);
  }
}
