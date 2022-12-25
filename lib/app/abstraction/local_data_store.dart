import 'package:chat_bird/app/abstraction/data_store.dart';
import 'package:chat_bird/app/helpers/persistance_helper/persistance_helper.dart';

abstract class LocalDataStore extends DataStore {
  final PersistanceHelper persistanceHelper;

  LocalDataStore(this.persistanceHelper);
}

class NoLocalDataStore extends LocalDataStore {
  NoLocalDataStore(super.persistanceHelper);
}
