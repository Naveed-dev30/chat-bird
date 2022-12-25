import 'package:chat_bird/app/abstraction/remote_data_store.dart';

abstract class AuthRemoteDataStore extends RemoteDataStore {
  AuthRemoteDataStore(super.remoteDBHelper);

  Future<void> sendSmsToken(String phoneNumber);
}
