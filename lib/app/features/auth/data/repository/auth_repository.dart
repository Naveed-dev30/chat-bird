import 'package:chat_bird/app/abstraction/repository.dart';

abstract class AuthRepository extends Repository {
  AuthRepository(super.localDataStore, super.remoteDataStore);

  Future<void> sendSmsToken(String phoneNumber);
}
