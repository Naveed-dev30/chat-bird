import 'package:chat_bird/app/abstraction/data_store.dart';
import 'package:chat_bird/app/helpers/remote_db_helper/remote_db_helper.dart';

abstract class RemoteDataStore extends DataStore {
  final RemoteDBHelper remoteDBHelper;

  RemoteDataStore(this.remoteDBHelper);
}

class NoRemoteDataStore extends RemoteDataStore {
  NoRemoteDataStore(super.remoteDBHelper);
}
