import 'package:chat_bird/app/abstraction/local_data_store.dart';
import 'package:chat_bird/app/abstraction/remote_data_store.dart';

abstract class Repository {
  final LocalDataStore localDataStore;
  final RemoteDataStore remoteDataStore;

  Repository(this.localDataStore, this.remoteDataStore);
}
